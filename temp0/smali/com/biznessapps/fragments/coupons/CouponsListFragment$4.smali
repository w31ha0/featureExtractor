.class Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;
.super Ljava/lang/Object;
.source "CouponsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/coupons/CouponsListFragment;->initCheckinButtonListener()V
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
    .line 508
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->access$300(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->location_absent:I

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 558
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->access$400(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)I

    move-result v0

    .line 516
    .local v0, "checkinResult":I
    if-lez v0, :cond_1

    .line 517
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->have_unlocked_coupon:I

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_0

    .line 518
    :cond_1
    if-nez v0, :cond_2

    .line 519
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->checking_more:I

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_0

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->checking_unsuccess:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4$1;-><init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;)V

    invoke-static {v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
