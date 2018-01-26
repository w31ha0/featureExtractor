.class Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;
.super Landroid/webkit/WebViewClient;
.source "ShoppingCartProducDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->shareViaFacebook(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;Landroid/app/Dialog;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 196
    const-string v0, "www.facebook.com/ajax/sharer/submit_page"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 199
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->facebook_sharing_successful:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    .line 202
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;->val$webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/ShoppingCartProducDetailsFragment$1;->val$webView:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 209
    return-void
.end method
