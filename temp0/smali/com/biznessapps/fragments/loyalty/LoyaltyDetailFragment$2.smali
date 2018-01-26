.class Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;
.super Ljava/lang/Object;
.source "LoyaltyDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->initItem(Landroid/view/ViewGroup;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

.field final synthetic val$card:Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;->this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;->val$card:Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v3, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;->val$card:Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    invoke-virtual {v3}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isLocked()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;->val$card:Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    invoke-virtual {v3}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isApproved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;->this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;->this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$layout;->loyalty_dialog:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 177
    .local v1, "contentView":Landroid/view/ViewGroup;
    sget v3, Lcom/biznessapps/layout/R$id;->loyalty_secret_edittext:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 178
    .local v2, "secretEditText":Landroid/widget/EditText;
    sget v3, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v4, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2$1;

    invoke-direct {v4, p0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2$1;-><init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    sget v3, Lcom/biznessapps/layout/R$string;->loyalty_dialog_yes_title:I

    new-instance v4, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2$2;

    invoke-direct {v4, p0, v2}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2$2;-><init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$2;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 201
    sget v3, Lcom/biznessapps/layout/R$string;->loyalty_dialog_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 204
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "contentView":Landroid/view/ViewGroup;
    .end local v2    # "secretEditText":Landroid/widget/EditText;
    :cond_0
    return-void
.end method
