.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;
.super Landroid/os/AsyncTask;
.source "ShoppingCartProducDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;
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
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;
    .param p2, "x1"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 244
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 245
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 246
    .local v0, "content":Ljava/io/InputStream;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    .end local v0    # "content":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
