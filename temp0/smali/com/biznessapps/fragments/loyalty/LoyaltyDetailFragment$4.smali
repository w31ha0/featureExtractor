.class Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$4;
.super Ljava/lang/Object;
.source "LoyaltyDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->showRedeemDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$4;->this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 222
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 223
    iget-object v0, p0, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment$4;->this$0:Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;->access$200(Lcom/biznessapps/fragments/loyalty/LoyaltyDetailFragment;)V

    .line 224
    return-void
.end method
