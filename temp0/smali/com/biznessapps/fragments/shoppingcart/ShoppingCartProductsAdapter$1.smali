.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$1;
.super Ljava/lang/Object;
.source "ShoppingCartProductsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->sortListDataByName()V
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
    .line 189
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/biznessapps/fragments/shoppingcart/entities/Product;Lcom/biznessapps/fragments/shoppingcart/entities/Product;)I
    .locals 2
    .param p1, "lhs"    # Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .param p2, "rhs"    # Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 189
    check-cast p1, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$1;->compare(Lcom/biznessapps/fragments/shoppingcart/entities/Product;Lcom/biznessapps/fragments/shoppingcart/entities/Product;)I

    move-result v0

    return v0
.end method
