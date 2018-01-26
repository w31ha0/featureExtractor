.class Lcom/biznessapps/fragments/coupons/CouponsListFragment$1;
.super Ljava/lang/Object;
.source "CouponsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/coupons/CouponsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$1;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$1;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->access$000(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V

    .line 87
    return-void
.end method
