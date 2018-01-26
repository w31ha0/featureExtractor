.class public Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "ShoppingCartProductsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    .line 40
    invoke-static {}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    .line 99
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$1;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 174
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method private initSearchFilter()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    .line 95
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->shop_product_search_box:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->filterText:Landroid/widget/EditText;

    .line 96
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->filterText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    return-void
.end method

.method private plugListView()V
    .locals 5

    .prologue
    .line 76
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v2, "products":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 79
    .local v1, "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    invoke-virtual {p0, v1, v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v1    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_0
    new-instance v3, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    .line 82
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/biznessapps/widgets/RefreshableListView;->setTextFilterEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->initListViewListener()V

    .line 85
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v3}, Lcom/biznessapps/widgets/RefreshableListView;->requestFocus()Z

    .line 87
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "products":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->initSearchFilter()V

    .line 88
    return-void
.end method

.method private showCheckOutActivity()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "TAB_LABEL"

    const-string v2, "Checkout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "SHOPPING_CART_CHECKOUT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->startActivity(Landroid/content/Intent;)V

    .line 160
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->cart_is_empty:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/biznessapps/layout/R$layout;->shop_products_list:I

    return v0
.end method

.method protected initViews()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->list_view_root:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    .line 170
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 171
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setItemsCanFocus(Z)V

    .line 172
    return-void
.end method

.method protected loadData()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->productsList:Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->items:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->plugListView()V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 139
    .local v0, "id":I
    sget v1, Lcom/biznessapps/layout/R$id;->list_header_name_btn:I

    if-ne v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->sortListDataByName()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    sget v1, Lcom/biznessapps/layout/R$id;->list_header_price_btn:I

    if-ne v0, v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->sortListDataByPrice()V

    goto :goto_0

    .line 143
    :cond_2
    sget v1, Lcom/biznessapps/layout/R$id;->cart_button:I

    if-ne v0, v1, :cond_3

    .line 144
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->showCheckOutActivity()V

    goto :goto_0

    .line 145
    :cond_3
    sget v1, Lcom/biznessapps/layout/R$id;->cart_counter_text_product_list:I

    if-ne v0, v1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->showCheckOutActivity()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->getLayoutId()I

    move-result v4

    invoke-virtual {p1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    .line 46
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 48
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TAB_SPECIAL_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->tabId:Ljava/lang/String;

    .line 49
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->cart_counter_text_product_list:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, "cartCounterTextView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->cart_button:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .local v0, "cartBtn":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->list_header_name_btn:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 52
    .local v2, "sortByNameBtn":Landroid/widget/Button;
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->list_header_price_btn:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 53
    .local v3, "sortByPriceBtn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MyCart"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 62
    new-instance v4, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;

    invoke-direct {v4, p0, v6}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$1;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->loadData()V

    .line 67
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    return-object v4
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget v4, Lcom/biznessapps/layout/R$id;->product_name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, "nameView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "productName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "TAB_UNIQUE_ID"

    iget-object v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v4, "TAB_LABEL"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v4, "TAB_FRAGMENT"

    const-string v5, "SHOPPPING_CART_PRODUCTS_DETAILS"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 130
    .local v2, "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    if-eqz v2, :cond_0

    .line 131
    const-string v4, "productDetails"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->startActivity(Landroid/content/Intent;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonListFragment;->onResume()V

    .line 164
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->cart_counter_text_product_list:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method
