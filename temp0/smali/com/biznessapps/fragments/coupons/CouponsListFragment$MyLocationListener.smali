.class Lcom/biznessapps/fragments/coupons/CouponsListFragment$MyLocationListener;
.super Ljava/lang/Object;
.source "CouponsListFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/coupons/CouponsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;


# direct methods
.method private constructor <init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$MyLocationListener;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;Lcom/biznessapps/fragments/coupons/CouponsListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/fragments/coupons/CouponsListFragment;
    .param p2, "x1"    # Lcom/biznessapps/fragments/coupons/CouponsListFragment$1;

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment$MyLocationListener;-><init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$MyLocationListener;->this$0:Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    invoke-static {v0, p1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->access$200(Lcom/biznessapps/fragments/coupons/CouponsListFragment;Landroid/location/Location;)V

    .line 395
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 399
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 403
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 407
    return-void
.end method
