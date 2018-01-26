.class Lcom/biznessapps/fragments/coupons/CouponDetailFragment$4;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeem()V
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
    .line 256
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Lcom/biznessapps/model/CouponItem;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/model/CouponItem;->setLastRedeemedTime(J)V

    .line 260
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$600(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    .line 261
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$000(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Lcom/biznessapps/model/CouponItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$700(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;Lcom/biznessapps/model/CouponItem;)V

    .line 262
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$4;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->successfull_coupon_redeem:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 263
    return-void
.end method
