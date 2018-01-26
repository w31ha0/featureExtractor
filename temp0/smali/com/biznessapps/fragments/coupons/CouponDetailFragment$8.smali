.class Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->doGpsCheckin()V
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
    .line 474
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 478
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v4, "longitudes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v2, "latitudes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v3, "locationsName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-virtual {v6}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/biznessapps/layout/views/map/LocationView;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .local v5, "showLocations":Landroid/content/Intent;
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v6}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$1000(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 484
    const-string v6, "has_user_location"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 485
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v7}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$1000(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v7}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$1000(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    sget v7, Lcom/biznessapps/layout/R$string;->your_location:I

    invoke-virtual {v6, v7}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_0
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-static {v6}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->access$1100(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/CouponItem$CouponsLocation;

    .line 491
    .local v0, "checkin":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getCouponName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    .end local v0    # "checkin":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 497
    const-string v6, "latitudes"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 498
    const-string v6, "longitudes"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 499
    const-string v6, "ocations_name"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 500
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    invoke-virtual {v6, v5}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 502
    :cond_2
    return-void
.end method
