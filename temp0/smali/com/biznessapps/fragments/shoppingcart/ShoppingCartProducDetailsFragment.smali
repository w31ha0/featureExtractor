.class public Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "ShoppingCartProducDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;
    }
.end annotation


# instance fields
.field private addToCartButton:Landroid/widget/Button;

.field private cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

.field private cartBtn:Landroid/widget/ImageView;

.field private cartCounterTextView:Landroid/widget/TextView;

.field private closeFriendDialogButton:Landroid/widget/Button;

.field private postReviewButton:Landroid/widget/Button;

.field private productDetails:Landroid/widget/LinearLayout;

.field private productName:Ljava/lang/String;

.field private quantityText:Landroid/widget/EditText;

.field private readReviewButton:Landroid/widget/Button;

.field private shareButton:Landroid/widget/Button;

.field private shareByEmailButton:Landroid/widget/Button;

.field private shareOnFacebookButton:Landroid/widget/Button;

.field private shareOnTwitterButton:Landroid/widget/Button;

.field private tabId:Ljava/lang/String;

.field private tellFriendContentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 238
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->productDetails:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private closeFriendContent()V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$anim;->hide_tell_friends_dialog:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 180
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    new-instance v1, Lcom/biznessapps/utils/ViewUtils$HideAnimationListener;

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/biznessapps/utils/ViewUtils$HideAnimationListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    return-void
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->addToCartButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->readReviewButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->postReviewButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cartCounterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cartBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->closeFriendDialogButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareByEmailButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareOnFacebookButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareOnTwitterButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    invoke-static {}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getInstance()Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v8

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    .line 68
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "productDetails"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/fragments/shoppingcart/entities/Product;

    .line 69
    .local v4, "product":Lcom/biznessapps/fragments/shoppingcart/entities/Product;
    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->productName:Ljava/lang/String;

    .line 70
    sget v8, Lcom/biznessapps/layout/R$id;->qty_edit_text:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->quantityText:Landroid/widget/EditText;

    .line 71
    sget v8, Lcom/biznessapps/layout/R$id;->product_image:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 72
    .local v5, "productImage":Landroid/widget/ImageView;
    sget v8, Lcom/biznessapps/layout/R$id;->product_details:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->productDetails:Landroid/widget/LinearLayout;

    .line 73
    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 74
    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URI;

    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 77
    .local v6, "uri":Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Volusion"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v6    # "uri":Ljava/net/URI;
    .end local v7    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MyCart"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 89
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_3

    .line 90
    new-instance v8, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$BackgroundDownLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    :cond_1
    :goto_1
    sget v8, Lcom/biznessapps/layout/R$id;->product_details_description:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    .local v0, "description":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget v8, Lcom/biznessapps/layout/R$id;->txt_price:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 99
    .local v3, "price":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 100
    .local v2, "p":F
    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Product;->getProductPrice()F

    move-result v2

    .line 101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    sget v8, Lcom/biznessapps/layout/R$id;->add_to_cart_btn:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->addToCartButton:Landroid/widget/Button;

    .line 103
    sget v8, Lcom/biznessapps/layout/R$id;->share_product_btn:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareButton:Landroid/widget/Button;

    .line 104
    sget v8, Lcom/biznessapps/layout/R$id;->read_reviews_btn:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->readReviewButton:Landroid/widget/Button;

    .line 105
    sget v8, Lcom/biznessapps/layout/R$id;->post_review_btn:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->postReviewButton:Landroid/widget/Button;

    .line 106
    sget v8, Lcom/biznessapps/layout/R$id;->cart_counter_text_product_details:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cartCounterTextView:Landroid/widget/TextView;

    .line 107
    sget v8, Lcom/biznessapps/layout/R$id;->cart_button:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cartBtn:Landroid/widget/ImageView;

    .line 108
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->addToCartButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->requestFocus()Z

    .line 109
    sget v8, Lcom/biznessapps/layout/R$id;->product_details_tell_friends_content:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    .line 110
    sget v8, Lcom/biznessapps/layout/R$id;->product_details_cancel_button:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->closeFriendDialogButton:Landroid/widget/Button;

    .line 111
    sget v8, Lcom/biznessapps/layout/R$id;->product_details_share_by_email_button:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareByEmailButton:Landroid/widget/Button;

    .line 112
    sget v8, Lcom/biznessapps/layout/R$id;->product_details_share_on_facebook_button:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareOnFacebookButton:Landroid/widget/Button;

    .line 113
    sget v8, Lcom/biznessapps/layout/R$id;->product_details_share_on_twitter_button:I

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareOnTwitterButton:Landroid/widget/Button;

    .line 115
    return-void

    .line 80
    .end local v0    # "description":Landroid/widget/TextView;
    .end local v2    # "p":F
    .end local v3    # "price":Landroid/widget/TextView;
    .restart local v6    # "uri":Ljava/net/URI;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getStoreName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MyCart"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 83
    .end local v6    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->productDetails:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v9}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v9

    invoke-virtual {v9}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method private openFriendContent()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 173
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$anim;->show_tell_friends_dialog:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 174
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private shareViaFacebook(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "titleResourceId"    # I

    .prologue
    .line 185
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, "dialog":Landroid/app/Dialog;
    sget v2, Lcom/biznessapps/layout/R$layout;->dialog:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 187
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setTitle(I)V

    .line 188
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 190
    sget v2, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 191
    .local v1, "webView":Landroid/webkit/WebView;
    new-instance v2, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;Landroid/app/Dialog;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 212
    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 213
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 215
    return-void
.end method

.method private showCheckOutActivity()V
    .locals 4

    .prologue
    .line 221
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "TAB_LABEL"

    const-string v2, "Checkout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "SHOPPING_CART_CHECKOUT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->startActivity(Landroid/content/Intent;)V

    .line 230
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->cart_is_empty:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 133
    .local v2, "id":I
    sget v4, Lcom/biznessapps/layout/R$id;->add_to_cart_btn:I

    if-ne v2, v4, :cond_1

    .line 134
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->productName:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->quantityText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->cart_counter_text_product_details:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 137
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->product_is_added:I

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 168
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget v4, Lcom/biznessapps/layout/R$id;->cart_button:I

    if-ne v2, v4, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->showCheckOutActivity()V

    goto :goto_0

    .line 141
    :cond_2
    sget v4, Lcom/biznessapps/layout/R$id;->cart_counter_text_product_details:I

    if-ne v2, v4, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->showCheckOutActivity()V

    goto :goto_0

    .line 143
    :cond_3
    sget v4, Lcom/biznessapps/layout/R$id;->share_product_btn:I

    if-ne v2, v4, :cond_4

    .line 144
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->openFriendContent()V

    goto :goto_0

    .line 145
    :cond_4
    sget v4, Lcom/biznessapps/layout/R$id;->product_details_cancel_button:I

    if-ne v2, v4, :cond_5

    .line 146
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->closeFriendContent()V

    goto :goto_0

    .line 147
    :cond_5
    sget v4, Lcom/biznessapps/layout/R$id;->product_details_share_on_twitter_button:I

    if-ne v2, v4, :cond_7

    .line 148
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->hasTwitterData()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 153
    :cond_6
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->closeFriendContent()V

    goto :goto_0

    .line 154
    :cond_7
    sget v4, Lcom/biznessapps/layout/R$id;->product_details_share_on_facebook_button:I

    if-ne v2, v4, :cond_8

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://facebook.com/sharer.php?u= https://market.android.com/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/activities/CommonFragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->facebook:I

    invoke-direct {p0, v4, v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareViaFacebook(Ljava/lang/String;I)V

    .line 158
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->closeFriendContent()V

    goto :goto_0

    .line 159
    :cond_8
    sget v4, Lcom/biznessapps/layout/R$id;->product_details_share_by_email_button:I

    if-ne v2, v4, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->email_body_format:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "emailBodyFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->email_subject_format:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "emailSubjectFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v8, [Ljava/lang/Object;

    sget v7, Lcom/biznessapps/layout/R$string;->app_name:I

    invoke-virtual {p0, v7}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-array v8, v8, [Ljava/lang/Object;

    sget v9, Lcom/biznessapps/layout/R$string;->app_name:I

    invoke-virtual {p0, v9}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " https://market.android.com/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/activities/CommonFragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->closeFriendContent()V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    sget v0, Lcom/biznessapps/layout/R$layout;->shop_product_details:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->root:Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->tabId:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 62
    invoke-direct {p0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->initListeners()V

    .line 63
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 233
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onResume()V

    .line 234
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->cart_counter_text_product_details:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 235
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->cart:Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getCheckoutProducts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method
