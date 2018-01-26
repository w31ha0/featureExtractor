.class public Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "ShoppingCartCheckoutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$1;,
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;,
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$BackgroundDownLoadTask;
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


# static fields
.field private static final CURRENT_CURRENCY:Ljava/lang/String; = "USD"

.field public static paypal:Lcom/paypal/android/MEP/PayPal;

.field public static resultExtra:Ljava/lang/String;

.field public static resultInfo:Ljava/lang/String;

.field public static resultTitle:Ljava/lang/String;


# instance fields
.field private bodyLayout:Landroid/widget/LinearLayout;

.field private buttonLayout:Landroid/widget/LinearLayout;

.field private cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

.field private googheCheckoutBtn:Landroid/widget/ImageButton;

.field private googheCheckoutImage:Landroid/graphics/drawable/Drawable;

.field private paypalPaymentBtn:Lcom/paypal/android/MEP/CheckoutButton;

.field private paypalResultDelegate:Lcom/paypal/android/MEP/PayPalResultDelegate;

.field private subTotalTextView:Landroid/widget/TextView;

.field private subtotal:F

.field private tax:D

.field private taxTextView:Landroid/widget/TextView;

.field private total:F

.field private totalItems:I

.field private totalItemsTextView:Landroid/widget/TextView;

.field private totalTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->totalItems:I

    .line 53
    iput v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subtotal:F

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->tax:D

    .line 55
    iput v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->total:F

    .line 56
    invoke-static {}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->googheCheckoutImage:Landroid/graphics/drawable/Drawable;

    .line 300
    return-void
.end method

.method private RemoveCartData()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 233
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->bodyLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->googheCheckoutBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$402(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->googheCheckoutBtn:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$500(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->googheCheckoutImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->googheCheckoutImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->buttonLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/paypal/android/MEP/CheckoutButton;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypalPaymentBtn:Lcom/paypal/android/MEP/CheckoutButton;

    return-object v0
.end method

.method static synthetic access$702(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Lcom/paypal/android/MEP/CheckoutButton;)Lcom/paypal/android/MEP/CheckoutButton;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;
    .param p1, "x1"    # Lcom/paypal/android/MEP/CheckoutButton;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypalPaymentBtn:Lcom/paypal/android/MEP/CheckoutButton;

    return-object p1
.end method

.method static synthetic access$802(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Lcom/paypal/android/MEP/PayPalResultDelegate;)Lcom/paypal/android/MEP/PayPalResultDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;
    .param p1, "x1"    # Lcom/paypal/android/MEP/PayPalResultDelegate;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypalResultDelegate:Lcom/paypal/android/MEP/PayPalResultDelegate;

    return-object p1
.end method

.method private createPaypalPayment()Lcom/paypal/android/MEP/PayPalPayment;
    .locals 11

    .prologue
    .line 161
    new-instance v5, Lcom/paypal/android/MEP/PayPalPayment;

    invoke-direct {v5}, Lcom/paypal/android/MEP/PayPalPayment;-><init>()V

    .line 162
    .local v5, "payment":Lcom/paypal/android/MEP/PayPalPayment;
    const-string v8, "USD"

    invoke-virtual {v5, v8}, Lcom/paypal/android/MEP/PayPalPayment;->setCurrencyType(Ljava/lang/String;)V

    .line 163
    new-instance v8, Ljava/math/BigDecimal;

    iget v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subtotal:F

    float-to-double v9, v9

    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v5, v8}, Lcom/paypal/android/MEP/PayPalPayment;->setSubtotal(Ljava/math/BigDecimal;)V

    .line 164
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/paypal/android/MEP/PayPalPayment;->setPaymentType(I)V

    .line 165
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getPaypalUsername()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->prehandleRecipientEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "handledRecipient":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/paypal/android/MEP/PayPalPayment;->setRecipient(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/paypal/android/MEP/PayPalPayment;->setMerchantName(Ljava/lang/String;)V

    .line 168
    new-instance v2, Lcom/paypal/android/MEP/PayPalInvoiceData;

    invoke-direct {v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;-><init>()V

    .line 169
    .local v2, "invoice":Lcom/paypal/android/MEP/PayPalInvoiceData;
    new-instance v8, Ljava/math/BigDecimal;

    iget-wide v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->tax:D

    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v2, v8}, Lcom/paypal/android/MEP/PayPalInvoiceData;->setTax(Ljava/math/BigDecimal;)V

    .line 170
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 171
    .local v6, "productNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 172
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 173
    .local v0, "currentProduct":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    new-instance v3, Lcom/paypal/android/MEP/PayPalInvoiceItem;

    invoke-direct {v3}, Lcom/paypal/android/MEP/PayPalInvoiceItem;-><init>()V

    .line 174
    .local v3, "invoiceItem":Lcom/paypal/android/MEP/PayPalInvoiceItem;
    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->setName(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->setID(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v9

    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v9, v8

    .line 178
    .local v7, "productTotal":F
    new-instance v8, Ljava/math/BigDecimal;

    float-to-double v9, v7

    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v8}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->setTotalPrice(Ljava/math/BigDecimal;)V

    .line 179
    new-instance v8, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v9

    float-to-double v9, v9

    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v8}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->setUnitPrice(Ljava/math/BigDecimal;)V

    .line 180
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/paypal/android/MEP/PayPalInvoiceItem;->setQuantity(I)V

    .line 181
    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPalInvoiceData;->getInvoiceItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0    # "currentProduct":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .end local v3    # "invoiceItem":Lcom/paypal/android/MEP/PayPalInvoiceItem;
    .end local v7    # "productTotal":F
    :cond_0
    invoke-virtual {v5, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setInvoiceData(Lcom/paypal/android/MEP/PayPalInvoiceData;)V

    .line 185
    return-object v5
.end method

.method private initPaymentMethods()V
    .locals 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->showProgressBar()V

    .line 291
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    return-void
.end method

.method private plugListView()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->items:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    .line 109
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    :cond_0
    return-void
.end method

.method private prehandleRecipientEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "primaryRecipient"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 190
    .local v0, "resultRecipient":Ljava/lang/String;
    const-string v1, ".gmail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, ".gmail"

    const-string v2, "@gmail"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/biznessapps/layout/R$layout;->shop_checkout_list:I

    return v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 237
    sget v1, Lcom/biznessapps/layout/R$id;->list_view_root:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    .local v0, "listViewRoot":Landroid/view/ViewGroup;
    sget v1, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 239
    return-void
.end method

.method protected loadData()V
    .locals 5

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->initPaymentMethods()V

    .line 95
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->updateCheckoutTotals()V

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->items:Ljava/util/List;

    .line 97
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 98
    .local v0, "cartProducts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->plugListView()V

    .line 104
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 201
    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    .line 203
    packed-switch p2, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultTitle:Ljava/lang/String;

    const-string v1, "SUCCESS"

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->payment_transaction_successful:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 226
    :cond_0
    return-void

    .line 205
    :pswitch_1
    const-string v0, "SUCCESS"

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultTitle:Ljava/lang/String;

    .line 206
    const-string v0, "You have successfully completed this "

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultInfo:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transaction ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.paypal.android.PAY_KEY"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultExtra:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->RemoveCartData()V

    goto :goto_0

    .line 211
    :pswitch_2
    const-string v0, "CANCELED"

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultTitle:Ljava/lang/String;

    .line 212
    const-string v0, "The transaction has been cancelled."

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultInfo:Ljava/lang/String;

    .line 213
    const-string v0, ""

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultExtra:Ljava/lang/String;

    goto :goto_0

    .line 216
    :pswitch_3
    const-string v0, "FAILURE"

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultTitle:Ljava/lang/String;

    .line 217
    const-string v0, "com.paypal.android.ERROR_MESSAGE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultInfo:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.paypal.android.ERROR_ID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->resultExtra:Ljava/lang/String;

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypalPaymentBtn:Lcom/paypal/android/MEP/CheckoutButton;

    if-ne p1, v3, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->createPaypalPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v2

    .line 147
    .local v2, "payment":Lcom/paypal/android/MEP/PayPalPayment;
    sget-object v3, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypalResultDelegate:Lcom/paypal/android/MEP/PayPalResultDelegate;

    invoke-virtual {v3, v2, v4, v5}, Lcom/paypal/android/MEP/PayPal;->checkout(Lcom/paypal/android/MEP/PayPalPayment;Landroid/content/Context;Lcom/paypal/android/MEP/PayPalResultDelegate;)Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, "checkoutIntent":Landroid/content/Intent;
    const/16 v3, 0x2711

    invoke-virtual {p0, v0, v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    .end local v0    # "checkoutIntent":Landroid/content/Intent;
    .end local v2    # "payment":Lcom/paypal/android/MEP/PayPalPayment;
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->googheCheckoutBtn:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_0

    .line 150
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    const-class v4, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v1, "googleCheckoutIntent":Landroid/content/Intent;
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "GOOGLE_CHECKOUT_FRAGMENT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getLayoutId()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->root:Landroid/view/ViewGroup;

    .line 71
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 72
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->body_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->bodyLayout:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->total_items_value:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->totalItemsTextView:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->text_subtotal_value:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subTotalTextView:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tax_value:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->taxTextView:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->total_value:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->totalTextView:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyCart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$BackgroundDownLoadTask;

    invoke-direct {v0, p0, v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$BackgroundDownLoadTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$BackgroundDownLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->checkout_buttons:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->buttonLayout:Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->loadData()V

    .line 90
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->root:Landroid/view/ViewGroup;

    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->bodyLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonListFragment;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 275
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->googheCheckoutBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->googheCheckoutBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    :cond_0
    sget-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypal:Lcom/paypal/android/MEP/PayPal;

    if-eqz v0, :cond_1

    .line 279
    sget-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypal:Lcom/paypal/android/MEP/PayPal;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/paypal/android/MEP/PayPal;->getCheckoutButton(Landroid/content/Context;II)Lcom/paypal/android/MEP/CheckoutButton;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypalPaymentBtn:Lcom/paypal/android/MEP/CheckoutButton;

    .line 281
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypalPaymentBtn:Lcom/paypal/android/MEP/CheckoutButton;

    invoke-virtual {v0, p0}, Lcom/paypal/android/MEP/CheckoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->buttonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypalPaymentBtn:Lcom/paypal/android/MEP/CheckoutButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    :cond_1
    return-void
.end method

.method public updateCheckoutTotals()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 122
    iput v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->totalItems:I

    .line 123
    iput v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subtotal:F

    .line 124
    iput v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->total:F

    .line 125
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->tax:D

    .line 127
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 128
    .local v0, "cartProducts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, "productName":Ljava/lang/String;
    iget v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->totalItems:I

    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->totalItems:I

    .line 131
    iget v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subtotal:F

    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v5, v3

    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subtotal:F

    goto :goto_0

    .line 134
    .end local v2    # "productName":Ljava/lang/String;
    :cond_0
    const-wide v3, 0x3faeb851eb851eb8L    # 0.06

    iget v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subtotal:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    iput-wide v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->tax:D

    .line 135
    iget v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subtotal:F

    float-to-double v3, v3

    iget-wide v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->tax:D

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->total:F

    .line 137
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->totalItemsTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->totalItems:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subTotalTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->subtotal:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->taxTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->tax:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->totalTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->total:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method
