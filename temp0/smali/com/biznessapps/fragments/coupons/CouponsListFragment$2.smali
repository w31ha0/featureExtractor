.class Lcom/biznessapps/fragments/coupons/CouponsListFragment$2;
.super Ljava/lang/Object;
.source "CouponsListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/coupons/CouponsListFragment;->buildAlertMessageNoGps()V
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
    .line 373
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$2;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 376
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 377
    return-void
.end method
