.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;
.super Landroid/os/AsyncTask;
.source "ShoppingCartCheckoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentMethodsInitTask"
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
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;
    .param p2, "x1"    # Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$1;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;-><init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 300
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 305
    sget-object v4, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypal:Lcom/paypal/android/MEP/PayPal;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getPaypalApplicationID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getPaypalApplicationID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lcom/paypal/android/MEP/PayPal;->initWithAppID(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    sput-object v4, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypal:Lcom/paypal/android/MEP/PayPal;

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/ImageButton;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getGoogleCheckoutMerchantID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    :try_start_0
    const-string v4, "https://checkout.google.com/buttons/checkoutMobile.gif?merchant_id=%s&w=152&h=30&style=trans&variant=no-text&loc=en_US"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v7}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getGoogleCheckoutMerchantID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "urlStr":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 316
    .local v0, "content":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    const-string v5, "src"

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$502(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0    # "content":Ljava/io/InputStream;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "urlStr":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v4, ""

    return-object v4

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 300
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 329
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getGoogleCheckoutMerchantID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$402(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 331
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$500(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 334
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$400(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCart;->getStore()Lcom/biznessapps/fragments/shoppingcart/entities/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/entities/Store;->getPaypalApplicationID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypal:Lcom/paypal/android/MEP/PayPal;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    sget-object v1, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->paypal:Lcom/paypal/android/MEP/PayPal;

    iget-object v2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/paypal/android/MEP/PayPal;->getCheckoutButton(Landroid/content/Context;II)Lcom/paypal/android/MEP/CheckoutButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$702(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Lcom/paypal/android/MEP/CheckoutButton;)Lcom/paypal/android/MEP/CheckoutButton;

    .line 340
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$700(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/paypal/android/MEP/CheckoutButton;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/CheckoutButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$600(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$700(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;)Lcom/paypal/android/MEP/CheckoutButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    new-instance v1, Lcom/biznessapps/fragments/shoppingcart/PaypalResultDelegate;

    invoke-direct {v1}, Lcom/biznessapps/fragments/shoppingcart/PaypalResultDelegate;-><init>()V

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->access$802(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;Lcom/paypal/android/MEP/PayPalResultDelegate;)Lcom/paypal/android/MEP/PayPalResultDelegate;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment$PaymentMethodsInitTask;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->stopProgressBar()V

    .line 346
    return-void
.end method
