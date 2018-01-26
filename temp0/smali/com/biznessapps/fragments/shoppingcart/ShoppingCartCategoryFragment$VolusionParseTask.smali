.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;
.super Landroid/os/AsyncTask;
.source "ShoppingCartCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolusionParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;
    .param p2, "x1"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 340
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "urls"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x1

    sput-boolean v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseThreadRunning:Z

    .line 343
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/Map;

    move-result-object v1

    const v2, 0x7fffffff

    iget-object v3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v3}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/biznessapps/fragments/shoppingcart/XMLUtils;->parseVolusionStoreCategoryList(Ljava/lang/String;Ljava/util/Map;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 340
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resultItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    const/4 v3, 0x0

    .line 348
    sput-boolean v3, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->volusionParseThreadRunning:Z

    .line 349
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;->access$1400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;)V

    .line 350
    new-instance v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$VolusionParseTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCategoryFragment$RefreshTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 352
    return-void
.end method
