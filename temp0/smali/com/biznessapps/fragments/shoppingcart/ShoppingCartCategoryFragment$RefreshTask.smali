.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;
.super Landroid/os/AsyncTask;
.source "ShoppingCartCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
    .param p2, "x1"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 363
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 367
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    const-string v0, ""

    return-object v0

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 363
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1700(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1800(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/AbstractAdapter;->notifyDataSetChanged()V

    .line 379
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$2000(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/widgets/RefreshableListView;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1900(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Lcom/biznessapps/layout/adapters/AbstractAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/AbstractAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setSelection(I)V

    .line 380
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V

    .line 382
    return-void
.end method
