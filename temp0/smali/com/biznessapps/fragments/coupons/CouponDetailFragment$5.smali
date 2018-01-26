.class Lcom/biznessapps/fragments/coupons/CouponDetailFragment$5;
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
    .line 266
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$5;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 270
    return-void
.end method
