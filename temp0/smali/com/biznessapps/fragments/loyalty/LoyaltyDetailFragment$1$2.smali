.class Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1$2;
.super Ljava/lang/Object;
.source "LoyaltyDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;

.field final synthetic val$secretEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1$2;->this$1:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;

    iput-object p2, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1$2;->val$secretEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1$2;->val$secretEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "enteredSecretCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1$2;->this$1:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;

    iget-object v1, v1, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;->val$card:Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->getCouponCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1$2;->this$1:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;

    iget-object v1, v1, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;->val$card:Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    invoke-virtual {v1, v3}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setApproved(Z)V

    .line 146
    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1$2;->this$1:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;

    iget-object v1, v1, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;->this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->access$002(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;Z)Z

    .line 147
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 148
    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1$2;->this$1:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;

    iget-object v1, v1, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;->this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->loadData()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1$2;->this$1:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;

    iget-object v1, v1, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$1;->this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->loyalty_wrong_code_message:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
