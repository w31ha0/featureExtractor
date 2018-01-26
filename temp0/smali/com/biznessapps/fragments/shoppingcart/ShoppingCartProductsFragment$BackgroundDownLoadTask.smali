.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;
.super Landroid/os/AsyncTask;
.source "ShoppingCartProductsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDownLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;
    .param p2, "x1"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 182
    .local v0, "content":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    .end local v0    # "content":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->access$300(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;->access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment;)Lcom/biznessapps/widgets/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/widgets/RefreshableListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProductsFragment$BackgroundDownLoadTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
