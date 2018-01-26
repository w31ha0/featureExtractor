.class Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;
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
    .line 168
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 171
    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    sget v4, Lcom/biznessapps/layout/R$string;->email_subject_format:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "emailSubjectFormat":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    sget v4, Lcom/biznessapps/layout/R$string;->share_coupon_info:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "couponInfoFormat":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->app_name:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " https://market.android.com/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/activities/CommonFragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "couponInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    sget v7, Lcom/biznessapps/layout/R$string;->app_name:I

    invoke-virtual {v6, v7}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method
