.class Lcom/biznessapps/fragments/coupons/CouponDetailFragment$MyLocationListener;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/coupons/CouponDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$MyLocationListener;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;
    .param p2, "x1"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$MyLocationListener;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$MyLocationListener;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v0, p1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$900(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;Landroid/location/Location;)V

    .line 389
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 393
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 397
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 401
    return-void
.end method
