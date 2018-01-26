.class public Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "ShoppingCartCheckoutAdapter.java"


# annotations
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

.field removeProductClickListener:Landroid/view/View$OnClickListener;

.field private shoppingCartCheckoutView:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

.field updateProductQuantityClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "shoppingCartCheckoutView"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;",
            "Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->shop_checkout_row:I

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 96
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$1;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->updateProductQuantityClickListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->removeProductClickListener:Landroid/view/View$OnClickListener;

    .line 37
    iput-object p3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->shoppingCartCheckoutView:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    .line 38
    invoke-static {}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->shoppingCartCheckoutView:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->items:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    if-nez p2, :cond_1

    .line 45
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->layoutItemResourceId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v1, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;

    invoke-direct {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;-><init>()V

    .line 48
    .local v1, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;
    sget v7, Lcom/biznessapps/layout/R$id;->product_name:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->setProductNameView(Landroid/widget/TextView;)V

    .line 49
    sget v7, Lcom/biznessapps/layout/R$id;->product_price:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->setProductPriceView(Landroid/widget/TextView;)V

    .line 50
    sget v7, Lcom/biznessapps/layout/R$id;->checkout_product_image:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->setSmallImageView(Landroid/widget/ImageView;)V

    .line 51
    sget v7, Lcom/biznessapps/layout/R$id;->quantity_edit_text:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->setQuantityView(Landroid/widget/EditText;)V

    .line 52
    sget v7, Lcom/biznessapps/layout/R$id;->update_btn:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v1, v7}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->setUpdateButton(Landroid/widget/Button;)V

    .line 53
    sget v7, Lcom/biznessapps/layout/R$id;->remove_btn:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v1, v7}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->setRemoveButton(Landroid/widget/Button;)V

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->items:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 61
    .local v2, "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v2}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "productName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getProductNameView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getProductPriceView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v2}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "quantity":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getQuantityView()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getUpdateButton()Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getUpdateButton()Landroid/widget/Button;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$id;->quantity_edit_text:I

    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getQuantityView()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getUpdateButton()Landroid/widget/Button;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->updateProductQuantityClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getRemoveButton()Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getRemoveButton()Landroid/widget/Button;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->removeProductClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "url":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 76
    :try_start_0
    new-instance v5, Ljava/net/URI;

    const-string v7, " "

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 77
    .local v5, "uri":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Volusion"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 79
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getProductImageView()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v3    # "productName":Ljava/lang/String;
    .end local v4    # "quantity":Ljava/lang/String;
    .end local v5    # "uri":Ljava/net/URI;
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 57
    .end local v1    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;
    .end local v2    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;

    .restart local v1    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;
    goto/16 :goto_0

    .line 81
    .restart local v2    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v3    # "productName":Ljava/lang/String;
    .restart local v4    # "quantity":Ljava/lang/String;
    .restart local v5    # "uri":Ljava/net/URI;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MyCart"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getProductImageView()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 84
    .end local v5    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_3
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$ShoppingCartCheckoutItem;->getProductImageView()Landroid/widget/ImageView;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$drawable;->product_default:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
