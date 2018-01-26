.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$1;
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
    .line 96
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "productName":Ljava/lang/String;
    sget v3, Lcom/biznessapps/layout/R$id;->quantity_edit_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 102
    .local v2, "quantityEditText":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 103
    .local v1, "quantity":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-static {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->access$000(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;

    invoke-static {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutAdapter;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->updateCheckoutTotals()V

    .line 105
    return-void
.end method
