.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$2;
.super Ljava/lang/Object;
.source "ShoppingCartProductsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->sortListDataByPrice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/biznessapps/fragments/shoppingcart/entities/Product;Lcom/biznessapps/fragments/shoppingcart/entities/Product;)I
    .locals 3
    .param p1, "lhs"    # Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .param p2, "rhs"    # Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "result":I
    invoke-virtual {p1}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v1

    invoke-virtual {p2}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v1

    invoke-virtual {p2}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 211
    const/4 v0, -0x1

    .line 213
    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 201
    check-cast p1, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$2;->compare(Lcom/biznessapps/fragments/shoppingcart/entities/Product;Lcom/biznessapps/fragments/shoppingcart/entities/Product;)I

    move-result v0

    return v0
.end method
