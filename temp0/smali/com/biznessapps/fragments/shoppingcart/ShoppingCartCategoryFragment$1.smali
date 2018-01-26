.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;
.super Lcom/biznessapps/api/AsyncCallback;
.source "ShoppingCartCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {p1}, Lcom/biznessapps/fragments/shoppingcart/JSONUtils;->parseStoreInfoList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$002(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Ljava/util/List;)Ljava/util/List;

    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, "sameAppCode":Z
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getAppCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_3

    .line 100
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$000(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 101
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$000(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    iget-object v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-virtual {v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setAppCode(Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V

    .line 117
    :goto_0
    return-void

    .line 104
    :cond_2
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/activities/CommonFragmentActivity;->stopProgressBar()V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCategoryTable()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 108
    .local v0, "categories":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$302(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Ljava/util/List;)Ljava/util/List;

    .line 109
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    .line 111
    .local v1, "category":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    .end local v1    # "category":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    :cond_4
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    iget-object v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$502(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Lcom/biznessapps/fragments/shoppingcart/entities/Store;)Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    .line 114
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V

    .line 115
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/activities/CommonFragmentActivity;->stopProgressBar()V

    goto :goto_0
.end method
