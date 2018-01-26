.class Lcom/biznessapps/fragments/coupons/CouponDetailFragment$3;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->initViewsWithData(Landroid/app/Activity;)V
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
    .line 181
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$100(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)I

    move-result v0

    if-lez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$200(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$300(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    .line 193
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$400(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$3;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$500(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    goto :goto_0
.end method
