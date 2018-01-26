.class Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;
.super Landroid/webkit/WebViewClient;
.source "GoogleCheckoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->access$000(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->access$000(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 76
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 80
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->ok:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2$1;-><init>(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$2;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->access$100(Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 87
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
