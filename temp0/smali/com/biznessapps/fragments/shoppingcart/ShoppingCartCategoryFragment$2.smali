.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$2;
.super Ljava/lang/Object;
.source "ShoppingCartCategoryFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 274
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 278
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$700(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$800(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;->notifyDataSetChanged()V

    .line 284
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$902(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Z)Z

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$902(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Z)Z

    goto :goto_0
.end method
