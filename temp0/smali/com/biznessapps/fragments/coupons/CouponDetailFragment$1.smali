.class Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/coupons/CouponDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 80
    .local v0, "activity":Lcom/biznessapps/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v1, "data":Landroid/content/Intent;
    const-string v2, "COUPON_EXTRA"

    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v3}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Lcom/biznessapps/model/CouponItem;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 83
    invoke-virtual {v0, v4, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 84
    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    .line 86
    .end local v1    # "data":Landroid/content/Intent;
    :cond_0
    return v4
.end method
