.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$1;
.super Ljava/lang/Object;
.source "ShoppingCartProductsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 102
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method
