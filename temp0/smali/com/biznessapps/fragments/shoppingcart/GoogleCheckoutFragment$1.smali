.class Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$1;
.super Landroid/webkit/WebChromeClient;
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
    .line 53
    iput-object p1, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->setTitle(I)V

    .line 57
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->setProgress(I)V

    .line 59
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment$1;->this$0:Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/shoppingcart/GoogleCheckoutFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->app_name:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->setTitle(I)V

    .line 61
    :cond_0
    return-void
.end method
