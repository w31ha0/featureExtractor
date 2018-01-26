.class public Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;
.super Ljava/lang/Object;
.source "ShoppingCart.java"


# static fields
.field private static instance:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;


# instance fields
.field private categoryProductsTbl:Ljava/util/Map;
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

.field private categoryTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation
.end field

.field private checkoutProducts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private productsTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;"
        }
    .end annotation
.end field

.field private store:Lcom/biznessapps/fragments/shoppingcart/entities/Store;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->categoryTable:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->productsTable:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->checkoutProducts:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->categoryProductsTbl:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->instance:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-direct {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;-><init>()V

    sput-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->instance:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    .line 37
    :cond_0
    sget-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->instance:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    return-object v0
.end method


# virtual methods
.method public getCategoryProductsTbl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->categoryProductsTbl:Ljava/util/Map;

    return-object v0
.end method

.method public getCategoryTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->categoryTable:Ljava/util/Map;

    return-object v0
.end method

.method public getCheckoutProducts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->checkoutProducts:Ljava/util/Map;

    return-object v0
.end method

.method public getProductsTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->productsTable:Ljava/util/Map;

    return-object v0
.end method

.method public getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->store:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    return-object v0
.end method

.method public setCheckoutProducts(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "checkoutProducts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->checkoutProducts:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public setProductsTable(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "productsTable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->productsTable:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public setStore(Lcom/biznessapps/fragments/shoppingcart/entities/Store;)V
    .locals 0
    .param p1, "store"    # Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->store:Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    .line 81
    return-void
.end method
