.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;
.super Landroid/widget/Filter;
.source "ShoppingCartCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "categoryFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;
    .param p2, "x1"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 13
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 97
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 99
    .local v1, "filterResults":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 100
    :cond_0
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 101
    :try_start_0
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 102
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 103
    monitor-exit v11

    .line 139
    :goto_0
    return-object v1

    .line 103
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 105
    :cond_1
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 107
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "prefixString":Ljava/lang/String;
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10, v12}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$302(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 109
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v6, "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 115
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 116
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    .line 117
    .local v3, "item":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/entities/Category;->getCatName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "itemName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 120
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_3
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, "words":[Ljava/lang/String;
    array-length v8, v9

    .line 125
    .local v8, "wordCount":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    if-ge v5, v8, :cond_2

    .line 126
    aget-object v10, v9, v5

    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 127
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v5    # "k":I
    .end local v6    # "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    .end local v7    # "prefixString":Ljava/lang/String;
    .end local v8    # "wordCount":I
    .end local v9    # "words":[Ljava/lang/String;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10

    .line 125
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .restart local v4    # "itemName":Ljava/lang/String;
    .restart local v5    # "k":I
    .restart local v6    # "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    .restart local v7    # "prefixString":Ljava/lang/String;
    .restart local v8    # "wordCount":I
    .restart local v9    # "words":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 135
    .end local v3    # "item":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v5    # "k":I
    .end local v8    # "wordCount":I
    .end local v9    # "words":[Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 136
    iget-object v10, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v10}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 137
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
    .line 144
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-static {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 147
    :try_start_0
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 149
    .local v2, "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->notifyDataSetChanged()V

    .line 150
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->clear()V

    .line 151
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fragments/shoppingcart/entities/Category;

    .line 153
    .local v0, "categoryItem":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter$categoryFilter;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;

    invoke-virtual {v3, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    .end local v0    # "categoryItem":Lcom/biznessapps/fragments/shoppingcart/entities/Category;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    .end local v2    # "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    .restart local v2    # "localItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    return-void
.end method
