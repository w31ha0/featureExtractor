.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;
.super Ljava/lang/Object;
.source "ShoppingCartCheckoutAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    .local v3, "productName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 117
    .local v2, "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    invoke-virtual {v2}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v2    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->notifyDataSetChanged()V

    .line 122
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->clear()V

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 125
    .restart local v2    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    invoke-virtual {v2}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 126
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-virtual {v4, v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 129
    .end local v2    # "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :cond_3
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->access$000(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->updateCheckoutTotals()V

    .line 131
    return-void
.end method
