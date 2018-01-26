.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;
.super Landroid/widget/Filter;
.source "ShoppingCartProductsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "productFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;
    .param p2, "x1"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 13
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 126
    .local v1, "filterResults":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 127
    :cond_0
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 128
    :try_start_0
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 129
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iput v10, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 130
    monitor-exit v11

    .line 167
    :goto_0
    return-object v1

    .line 130
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 132
    :cond_1
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 134
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "prefixString":Ljava/lang/String;
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10, v12}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$302(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 136
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v6, "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 142
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 143
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 144
    .local v3, "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "itemName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 147
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    :cond_3
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "words":[Ljava/lang/String;
    array-length v8, v9

    .line 153
    .local v8, "wordCount":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    if-ge v5, v8, :cond_2

    .line 154
    aget-object v10, v9, v5

    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 155
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 165
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v5    # "k":I
    .end local v6    # "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    .end local v7    # "prefixString":Ljava/lang/String;
    .end local v8    # "wordCount":I
    .end local v9    # "words":[Ljava/lang/String;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10

    .line 153
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .restart local v4    # "itemName":Ljava/lang/String;
    .restart local v5    # "k":I
    .restart local v6    # "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    .restart local v7    # "prefixString":Ljava/lang/String;
    .restart local v8    # "wordCount":I
    .restart local v9    # "words":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 163
    .end local v3    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v5    # "k":I
    .end local v8    # "wordCount":I
    .end local v9    # "words":[Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 164
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iput v10, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 165
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 172
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-static {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 175
    :try_start_0
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 177
    .local v1, "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->notifyDataSetChanged()V

    .line 178
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->clear()V

    .line 179
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 181
    .local v2, "productItem":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter$productFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;

    invoke-virtual {v3, v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    .end local v1    # "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    .end local v2    # "productItem":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    .restart local v1    # "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    return-void
.end method
