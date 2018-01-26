.class public Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "ShoppingCartCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/biznessapps/widgets/PullToRefreshListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;,
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/biznessapps/widgets/PullToRefreshListView$OnRefreshListener;"
    }
.end annotation


# static fields
.field public static productsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;"
        }
    .end annotation
.end field

.field private static volusionParseTask:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;

.field public static volusionParseThreadRunning:Z


# instance fields
.field private RESULT_LIMIT:I

.field private cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

.field private categoryItemsCach:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation
.end field

.field private categoryProducts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private isListFiltered:Z

.field private stores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Store;",
            ">;"
        }
    .end annotation
.end field

.field private tabId:Ljava/lang/String;

.field private volusionStoreUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    .line 60
    const/16 v0, 0x19

    iput v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->RESULT_LIMIT:I

    .line 271
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$2;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->stores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->stores:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionStoreUrlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->categoryProducts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->categoryItemsCach:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->updateVolusionFeaturedProductsProperties()V

    return-void
.end method

.method static synthetic access$1600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->loadStoreData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/widgets/RefreshableListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->items:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Lcom/biznessapps/fragments/shoppingcart/entities/Store;)Lcom/biznessapps/fragments/shoppingcart/entities/Store;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
    .param p1, "x1"    # Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    return-object p1
.end method

.method static synthetic access$600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->plugListView()V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->isListFiltered:Z

    return p1
.end method

.method private fetchMoreResult()V
    .locals 4

    .prologue
    .line 332
    sget-boolean v0, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->volusionStorelistHaveMoreData:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;)V

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseTask:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;

    .line 336
    sget-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseTask:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 338
    :cond_0
    return-void
.end method

.method private initSearchFilter()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    .line 268
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->filterText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    return-void
.end method

.method private loadStoreData()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 130
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getProductsTable()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 131
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryTable()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryProductsTbl()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 133
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 134
    sget-object v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseTask:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseThreadRunning:Z

    if-eqz v1, :cond_0

    .line 135
    sput-boolean v5, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseThreadRunning:Z

    .line 136
    sget-object v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseTask:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;

    invoke-virtual {v1, v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->cancel(Z)Z

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->stores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->stores:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    .line 141
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->setStore(Lcom/biznessapps/fragments/shoppingcart/entities/Store;)V

    .line 142
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Volusion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    const-string v1, "http://%s/net/WebService.aspx?Login=%s&EncryptedPassword=%s&EDI_Name=Generic/all_Products"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getDomain()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getApikey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getApiSecret()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionStoreUrlString:Ljava/lang/String;

    .line 146
    sput-boolean v4, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseThreadRunning:Z

    .line 147
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionStoreUrlString:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->categoryProducts:Ljava/util/Map;

    iget v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->RESULT_LIMIT:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->parseVolusionStoreCategoryList(Ljava/lang/String;Ljava/util/Map;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->items:Ljava/util/List;

    .line 149
    sput-boolean v5, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseThreadRunning:Z

    .line 150
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->plugListView()V

    .line 151
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->stopProgressBar()V

    .line 152
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->fetchMoreResult()V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyCart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->setCustomeStoreBackground()V

    .line 157
    :cond_3
    const-string v1, "http://biznessapps.com/iphone/cart_get_category.php?app_code=%s&tab_id=%s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->tabId:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "customeStoreCategroiesUrlString":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->parseCustomeCartCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->items:Ljava/util/List;

    .line 160
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->tabId:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->categoryProducts:Ljava/util/Map;

    invoke-static {v1, v2, v3}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->parseCustomeCartProductList(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->plugListView()V

    .line 163
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->stopProgressBar()V

    goto :goto_0
.end method

.method private plugListView()V
    .locals 6

    .prologue
    .line 236
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    .line 239
    .local v3, "item":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    invoke-virtual {p0, v3, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v3    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    if-nez v4, :cond_2

    .line 243
    new-instance v4, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    .line 246
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/RefreshableListView;->setTextFilterEnabled(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->initListViewListener()V

    .line 250
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4}, Lcom/biznessapps/widgets/RefreshableListView;->requestFocus()Z

    .line 260
    .end local v1    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->initSearchFilter()V

    .line 261
    return-void

    .line 252
    .restart local v1    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v4, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->clear()V

    .line 253
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    .line 254
    .local v0, "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v4, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {v4, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 256
    .end local v0    # "cat":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :cond_3
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v4, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->notifyDataSetChanged()V

    .line 257
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v4, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {v4, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->cloneItems(Ljava/util/List;)V

    goto :goto_1
.end method

.method private setCustomeStoreBackground()V
    .locals 6

    .prologue
    .line 170
    :try_start_0
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 172
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 174
    .local v0, "content":Ljava/io/InputStream;
    const-string v4, "src"

    invoke-static {v0, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 175
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v4, v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    .end local v0    # "content":Ljava/io/InputStream;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v5}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/RefreshableListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showCheckOutActivity()V
    .locals 4

    .prologue
    .line 316
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 317
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 319
    const-string v1, "TAB_LABEL"

    const-string v2, "Checkout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "SHOPPING_CART_CHECKOUT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 325
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    const-string v2, "Your cart is Empty"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateVolusionFeaturedProductsProperties()V
    .locals 5

    .prologue
    .line 190
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Volusion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "http://%s/net/WebService.aspx?Login=%s&EncryptedPassword=%s&EDI_Name=Generic/featured_Products"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getDomain()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getApikey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->currentStore:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getApiSecret()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "urlString":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->updateFeaturedProductsProperties(Ljava/lang/String;)V

    .line 196
    .end local v0    # "urlString":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 223
    sget v0, Lcom/biznessapps/layout/R$layout;->shop_category_list:I

    return v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 228
    sget v1, Lcom/biznessapps/layout/R$id;->list_view_root:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 229
    .local v0, "listViewRoot":Landroid/view/ViewGroup;
    sget v1, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 230
    return-void
.end method

.method protected loadData()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->tabId:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V

    .line 120
    .local v0, "storeCategoryParserCallback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->showProgressBar()V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://biznessapps.com/iphone/cart_get_stores.php?app_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&tab_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/biznessapps/api/AppHttpUtils;->executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 305
    .local v0, "id":I
    sget v1, Lcom/biznessapps/layout/R$id;->cart_image:I

    if-ne v0, v1, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->showCheckOutActivity()V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    sget v1, Lcom/biznessapps/layout/R$id;->cart_counter_text:I

    if-ne v0, v1, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->showCheckOutActivity()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->root:Landroid/view/ViewGroup;

    .line 68
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 70
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->cart_counter_text:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, "cartCounterTextView":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->cart_image:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 73
    .local v1, "cartImage":Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-static {}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    .line 75
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->shop_category_search_box:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->filterText:Landroid/widget/EditText;

    .line 76
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryProductsTbl()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->categoryProducts:Ljava/util/Map;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->categoryItemsCach:Ljava/util/List;

    .line 79
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->loadData()V

    .line 80
    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->root:Landroid/view/ViewGroup;

    return-object v2
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
    .line 201
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->isListFiltered:Z

    if-nez v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->getOriginalItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->getCatName()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "catName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 211
    const-string v3, "TAB_LABEL"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "SHOPPPING_CART_PRODUCTS"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "productsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->categoryProducts:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "productsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 215
    .restart local v2    # "productsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    if-eqz v2, :cond_0

    .line 216
    sput-object v2, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->productsList:Ljava/util/List;

    .line 217
    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 219
    :cond_0
    return-void

    .line 205
    .end local v0    # "catName":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "productsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->getFilteredItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->getCatName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "catName":Ljava/lang/String;
    goto :goto_0
.end method

.method public onRefresh()V
    .locals 4

    .prologue
    .line 360
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 293
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonListFragment;->onResume()V

    .line 295
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$id;->cart_counter_text:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 297
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->filterText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method
