.class public Lcom/biznessapps/fragments/coupons/CouponDetailFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "CouponDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/coupons/CouponDetailFragment$MyLocationListener;
    }
.end annotation


# instance fields
.field private checkinCount:I

.field private checkinLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/CouponItem$CouponsLocation;",
            ">;"
        }
    .end annotation
.end field

.field private coupon:Lcom/biznessapps/model/CouponItem;

.field private couponImage:Landroid/widget/ImageView;

.field private currentLocation:Landroid/location/Location;

.field private description:Landroid/widget/TextView;

.field private infoItem:Lcom/biznessapps/model/InfoItem;

.field private isQrCoupon:Z

.field private locListener:Landroid/location/LocationListener;

.field private locManager:Landroid/location/LocationManager;

.field private onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

.field private redeemButton:Landroid/widget/Button;

.field private redeemTextView:Landroid/widget/TextView;

.field private shareButton:Landroid/widget/Button;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinLocations:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    .line 384
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Lcom/biznessapps/model/CouponItem;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinLocations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->isQrCoupon:Z

    return v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->doQrScanning()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->doGpsCheckin()V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeem()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateRedeemState()V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;Lcom/biznessapps/model/CouponItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;
    .param p1, "x1"    # Lcom/biznessapps/model/CouponItem;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->storeCoupon(Lcom/biznessapps/model/CouponItem;)V

    return-void
.end method

.method static synthetic access$900(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponDetailFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateLocationData(Landroid/location/Location;)V

    return-void
.end method

.method private buildAlertMessageNoGps()V
    .locals 5

    .prologue
    .line 338
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->gps_disabled_info:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->yes:I

    new-instance v4, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$7;

    invoke-direct {v4, p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$7;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->no:I

    new-instance v4, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$6;

    invoke-direct {v4, p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$6;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 367
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 368
    return-void
.end method

.method private checkGpsEnabling()V
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 331
    .local v0, "isGPSEnabled":Z
    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->buildAlertMessageNoGps()V

    .line 334
    :cond_0
    return-void
.end method

.method private doGpsCheckin()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 460
    iget-object v5, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->currentLocation:Landroid/location/Location;

    if-nez v5, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->location_absent:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/CouponItem;->getLastCheckinTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v7, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/CouponItem;->getCheckinInterval()I

    move-result v7

    const v8, 0x36ee80

    mul-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    move v0, v3

    .line 465
    .local v0, "canCheckin":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 466
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateGpsCheckin()I

    move-result v2

    .line 467
    .local v2, "checkinResult":I
    if-lez v2, :cond_3

    .line 468
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->have_unlocked_coupon:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 469
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateRedeemState()V

    goto :goto_0

    .end local v0    # "canCheckin":Z
    .end local v2    # "checkinResult":I
    :cond_2
    move v0, v4

    .line 463
    goto :goto_1

    .line 470
    .restart local v0    # "canCheckin":Z
    .restart local v2    # "checkinResult":I
    :cond_3
    if-nez v2, :cond_4

    .line 471
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->checking_more:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 472
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateRedeemState()V

    goto :goto_0

    .line 473
    :cond_4
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->checking_unsuccess:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;

    invoke-direct {v5, p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$8;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    invoke-static {v3, v4, v5}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 506
    .end local v2    # "checkinResult":I
    :cond_5
    sget v5, Lcom/biznessapps/layout/R$string;->checkin_interval:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "checkinIntervalFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v6}, Lcom/biznessapps/model/CouponItem;->getCheckinInterval()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doQrScanning()V
    .locals 3

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/layout/views/scanning/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 433
    return-void
.end method

.method private getGpsLocationListener()Landroid/location/LocationListener;
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$MyLocationListener;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locListener:Landroid/location/LocationListener;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private getNetworkLocationListener()Landroid/location/LocationListener;
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$MyLocationListener;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;Lcom/biznessapps/fragments/coupons/CouponDetailFragment$1;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locListener:Landroid/location/LocationListener;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private initCheckinLocations(Lcom/biznessapps/model/CouponItem;)V
    .locals 6
    .param p1, "coupon"    # Lcom/biznessapps/model/CouponItem;

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/biznessapps/model/CouponItem;->getLocations()Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "couponLocations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem$CouponsLocation;>;"
    if-eqz v0, :cond_1

    .line 297
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/CouponItem$CouponsLocation;

    .line 298
    .local v2, "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/biznessapps/model/CouponItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->setCouponName(Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinLocations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    :cond_1
    return-void
.end method

.method private initLocationManagerAndData()V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locManager:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locManager:Landroid/location/LocationManager;

    .line 309
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 310
    .local v0, "lastKnownLocation":Landroid/location/Location;
    if-nez v0, :cond_0

    .line 311
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 313
    :cond_0
    if-eqz v0, :cond_1

    .line 314
    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateLocationData(Landroid/location/Location;)V

    .line 317
    .end local v0    # "lastKnownLocation":Landroid/location/Location;
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkGpsEnabling()V

    .line 318
    return-void
.end method

.method private initViewsWithData(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->coupon_title_label:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->coupon_description_label:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->description:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->redeem_textview:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeemTextView:Landroid/widget/TextView;

    .line 161
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->redeem_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    .line 162
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->coupon_share_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->shareButton:Landroid/widget/Button;

    .line 163
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->coupon_image:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->couponImage:Landroid/widget/ImageView;

    .line 164
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateRedeemState()V

    .line 168
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->shareButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$2;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    new-instance v2, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$3;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method private redeem()V
    .locals 7

    .prologue
    .line 249
    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getLastRedeemedTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->isReusable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$layout;->common_dialog_layout:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 253
    sget v3, Lcom/biznessapps/layout/R$string;->redeem_coupon:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 255
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v3, -0x1

    sget v4, Lcom/biznessapps/layout/R$string;->yes:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$4;

    invoke-direct {v5, p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$4;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 265
    const/4 v3, -0x2

    sget v4, Lcom/biznessapps/layout/R$string;->no:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$5;

    invoke-direct {v5, p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment$5;-><init>(Lcom/biznessapps/fragments/coupons/CouponDetailFragment;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 272
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 274
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private removeLocationListener()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getGpsLocationListener()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 325
    :cond_0
    return-void
.end method

.method private storeCoupon(Lcom/biznessapps/model/CouponItem;)V
    .locals 2
    .param p1, "coupon"    # Lcom/biznessapps/model/CouponItem;

    .prologue
    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v0, "dataToStore":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/storage/StorageKeeper;->addCoupons(Ljava/util/List;)V

    .line 566
    return-void
.end method

.method private updateGpsCheckin()I
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 516
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "!!!!!!!!!!!!!!!!!!!! updateGpsCheckincoupon distance = "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "checkinWasChanged":Z
    const/4 v3, 0x0

    .line 519
    .local v3, "couponUnlocked":Z
    iget-object v10, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v10}, Lcom/biznessapps/model/CouponItem;->getLocations()Ljava/util/List;

    move-result-object v2

    .line 520
    .local v2, "couponLocations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem$CouponsLocation;>;"
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!!!!!!!!!!!!!!!!!!!! couponLocations.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    if-eqz v2, :cond_2

    .line 522
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/model/CouponItem$CouponsLocation;

    .line 523
    .local v6, "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!!!!!!!!!!!!!!!!!!!! item.getLatitude() + item.getLongitude() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v6}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v10}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 527
    new-instance v7, Landroid/location/Location;

    const-string v10, ""

    invoke-direct {v7, v10}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 529
    .local v7, "locItem":Landroid/location/Location;
    :try_start_0
    invoke-virtual {v6}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    .line 530
    invoke-virtual {v6}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    iget-object v10, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->currentLocation:Landroid/location/Location;

    invoke-virtual {v10, v7}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 536
    .local v1, "couponDistance":F
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!!!!!!!!!!!!!!!!!!!! coupon distance = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 537
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "!!!!!!!!!!!!!!!!!!!!(FEET_DISTANCE / METER_TO_FEET) = 91.46342"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 538
    const v10, 0x42b6ed45

    cmpg-float v10, v1, v10

    if-gez v10, :cond_0

    .line 539
    iget v10, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    if-lez v10, :cond_2

    .line 540
    iget v10, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    .line 541
    iget v10, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    if-nez v10, :cond_1

    .line 542
    const/4 v3, 0x1

    .line 544
    :cond_1
    iget-object v10, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    iget v11, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    invoke-virtual {v10, v11}, Lcom/biznessapps/model/CouponItem;->setCheckinTarget(I)V

    .line 545
    iget-object v10, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/biznessapps/model/CouponItem;->setLastCheckinTime(J)V

    .line 546
    const/4 v0, 0x1

    .line 547
    iget-object v10, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-direct {p0, v10}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->storeCoupon(Lcom/biznessapps/model/CouponItem;)V

    .line 553
    .end local v1    # "couponDistance":F
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    .end local v7    # "locItem":Landroid/location/Location;
    :cond_2
    if-eqz v3, :cond_3

    .line 558
    :goto_1
    return v8

    .line 531
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    .restart local v7    # "locItem":Landroid/location/Location;
    :catch_0
    move-exception v4

    .line 532
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!!!!!!!!!!!!!!!!!!!! e.printStackTrace(); = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    .end local v7    # "locItem":Landroid/location/Location;
    :cond_3
    if-eqz v0, :cond_4

    move v8, v9

    .line 556
    goto :goto_1

    .line 558
    :cond_4
    const/4 v8, -0x1

    goto :goto_1
.end method

.method private updateLocationData(Landroid/location/Location;)V
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 406
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->currentLocation:Landroid/location/Location;

    .line 407
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! found location data!!!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    :cond_0
    const/4 v2, 0x0

    .line 412
    .local v2, "distance":F
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinLocations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/CouponItem$CouponsLocation;

    .line 413
    .local v0, "checkin":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    new-instance v5, Landroid/location/Location;

    const-string v6, ""

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 415
    .local v5, "locItem":Landroid/location/Location;
    :try_start_0
    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 416
    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_1
    invoke-virtual {p1, v5}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 421
    .local v1, "currentDistance":F
    cmpg-float v6, v1, v2

    if-ltz v6, :cond_2

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-nez v6, :cond_1

    .line 422
    :cond_2
    move v2, v1

    goto :goto_0

    .line 417
    .end local v1    # "currentDistance":F
    :catch_0
    move-exception v3

    .line 418
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 425
    .end local v0    # "checkin":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "locItem":Landroid/location/Location;
    :cond_3
    return-void
.end method

.method private updateQrCheckin(Ljava/lang/String;)I
    .locals 5
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "checkinWasChanged":Z
    const/4 v1, 0x0

    .line 438
    .local v1, "couponUnlocked":Z
    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/CouponItem;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    iget v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    if-lez v2, :cond_1

    .line 440
    iget v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    .line 441
    iget v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    if-nez v2, :cond_0

    .line 442
    const/4 v1, 0x1

    .line 444
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    iget v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/model/CouponItem;->setCheckinTarget(I)V

    .line 445
    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/model/CouponItem;->setLastCheckinTime(J)V

    .line 446
    const/4 v0, 0x1

    .line 447
    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-direct {p0, v2}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->storeCoupon(Lcom/biznessapps/model/CouponItem;)V

    .line 450
    :cond_1
    if-eqz v1, :cond_2

    .line 451
    const/4 v2, 0x1

    .line 455
    :goto_0
    return v2

    .line 452
    :cond_2
    if-eqz v0, :cond_3

    .line 453
    const/4 v2, 0x0

    goto :goto_0

    .line 455
    :cond_3
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private updateRedeemState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 198
    iget v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    if-lez v1, :cond_2

    .line 199
    sget v1, Lcom/biznessapps/layout/R$string;->coupons_description_format:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "format":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->description:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-boolean v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->scan_qr:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v0    # "format":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->checkin:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    .end local v0    # "format":Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    if-nez v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->getLastRedeemedTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->description:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/InfoItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getImage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->bitmapUrl:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->couponImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    sget v2, Lcom/biznessapps/layout/R$string;->redeem:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUPONS_MAP_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/CouponItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/InfoItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    .line 146
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    iget-boolean v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-eqz v1, :cond_0

    const-string v0, "http://biznessapps.com/iphone/qrcoupon_detail.php?id=%s&tab_id=%s&version=4"

    .line 127
    .local v0, "mainPartUrlFormat":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 126
    .end local v0    # "mainPartUrlFormat":Ljava/lang/String;
    :cond_0
    const-string v0, "http://www.biznessapps.com/iphone/coupon_detail.php?id=%s&tab_id=%s&version=4"

    goto :goto_0
.end method

.method protected getViewsRef()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->redeemButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->shareButton:Landroid/widget/Button;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 219
    if-eqz p3, :cond_0

    if-ne p1, v4, :cond_0

    .line 220
    const-string v6, "SCAN_RESULT"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "contents":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v8}, Lcom/biznessapps/model/CouponItem;->getLastCheckinTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v8, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v8}, Lcom/biznessapps/model/CouponItem;->getCheckinInterval()I

    move-result v8

    const v9, 0x36ee80

    mul-int/2addr v8, v9

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    move v0, v4

    .line 225
    .local v0, "canChecking":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 226
    invoke-direct {p0, v3}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateQrCheckin(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, "checkinResult":I
    if-ne v2, v4, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->have_unlocked_coupon:I

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 229
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateRedeemState()V

    .line 245
    .end local v0    # "canChecking":Z
    .end local v2    # "checkinResult":I
    .end local v3    # "contents":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v3    # "contents":Ljava/lang/String;
    :cond_1
    move v0, v5

    .line 223
    goto :goto_0

    .line 230
    .restart local v0    # "canChecking":Z
    .restart local v2    # "checkinResult":I
    :cond_2
    if-nez v2, :cond_3

    .line 231
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->checking_more:I

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    .line 232
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->updateRedeemState()V

    goto :goto_1

    .line 233
    :cond_3
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->qr_unsuccess_scanning:I

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_1

    .line 237
    .end local v2    # "checkinResult":I
    :cond_4
    sget v6, Lcom/biznessapps/layout/R$string;->checkin_interval:I

    invoke-virtual {p0, v6}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "checkinIntervalFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v7}, Lcom/biznessapps/model/CouponItem;->getCheckinInterval()I

    move-result v7

    mul-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    sget v0, Lcom/biznessapps/layout/R$layout;->coupon_detail_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    .line 93
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 113
    .local v0, "activity":Lcom/biznessapps/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;)V

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onDestroy()V

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "COUPON_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/CouponItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    .line 100
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "QR_COUPON_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->isQrCoupon:Z

    .line 101
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem;->getCheckinTarget()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->checkinCount:I

    .line 102
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->initCheckinLocations(Lcom/biznessapps/model/CouponItem;)V

    .line 103
    iget-boolean v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->initLocationManagerAndData()V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->loadData()V

    .line 107
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;)V

    .line 108
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 278
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onStart()V

    .line 279
    iget-boolean v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->initLocationManagerAndData()V

    .line 281
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->locManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getGpsLocationListener()Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 284
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onStop()V

    .line 289
    iget-boolean v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->isQrCoupon:Z

    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->removeLocationListener()V

    .line 292
    :cond_0
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->tabId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseInfo(Ljava/lang/String;)Lcom/biznessapps/model/InfoItem;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    .line 133
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUPONS_MAP_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->coupon:Lcom/biznessapps/model/CouponItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/CouponItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/InfoItem;->getImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->bitmapUrl:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->bitmapUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/ImageManager;->downloadImageToCache(Ljava/lang/String;Z)V

    .line 140
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/coupons/CouponDetailFragment;->initViewsWithData(Landroid/app/Activity;)V

    .line 141
    return-void
.end method
