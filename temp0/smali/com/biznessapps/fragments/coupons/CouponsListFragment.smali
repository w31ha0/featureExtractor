.class public Lcom/biznessapps/fragments/coupons/CouponsListFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "CouponsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/coupons/CouponsListFragment$MyLocationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/CouponItem;",
        ">;"
    }
.end annotation


# instance fields
.field private checkinButton:Landroid/widget/Button;

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

.field private currentLocation:Landroid/location/Location;

.field private isQrCoupons:Z

.field private locListener:Landroid/location/LocationListener;

.field private locManager:Landroid/location/LocationManager;

.field private locationTextView:Landroid/widget/TextView;

.field private qrButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->checkinLocations:Ljava/util/List;

    .line 390
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->startScanning()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/coupons/CouponsListFragment;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponsListFragment;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->updateLocationData(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->updateGpsCheckins()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/coupons/CouponsListFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->checkinLocations:Ljava/util/List;

    return-object v0
.end method

.method private buildAlertMessageNoGps()V
    .locals 5

    .prologue
    .line 352
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->gps_disabled_info:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->yes:I

    new-instance v4, Lcom/biznessapps/fragments/coupons/CouponsListFragment$3;

    invoke-direct {v4, p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment$3;-><init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->no:I

    new-instance v4, Lcom/biznessapps/fragments/coupons/CouponsListFragment$2;

    invoke-direct {v4, p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment$2;-><init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 380
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 381
    return-void
.end method

.method private checkGpsEnabling()V
    .locals 3

    .prologue
    .line 342
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 345
    .local v0, "isGPSEnabled":Z
    if-nez v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->buildAlertMessageNoGps()V

    .line 348
    :cond_0
    return-void
.end method

.method private doCouponsPrehandling(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/CouponItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/CouponItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "parsedCoupons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v3, "resultItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/CouponItem;

    .line 154
    .local v0, "coupon":Lcom/biznessapps/model/CouponItem;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 157
    .local v1, "currentDate":Ljava/util/Date;
    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem;->getStartDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem;->getStartDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem;->getEndDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem;->getEndDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    .end local v0    # "coupon":Lcom/biznessapps/model/CouponItem;
    .end local v1    # "currentDate":Ljava/util/Date;
    :cond_3
    return-object v3
.end method

.method private getLocationListener()Landroid/location/LocationListener;
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/biznessapps/fragments/coupons/CouponsListFragment$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment$MyLocationListener;-><init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;Lcom/biznessapps/fragments/coupons/CouponsListFragment$1;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locListener:Landroid/location/LocationListener;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private increaseCheckin(Ljava/lang/String;)I
    .locals 12
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "checkinWasChanged":Z
    const/4 v4, 0x0

    .line 262
    .local v4, "couponUnlocked":Z
    iget-object v8, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/model/CouponItem;

    .line 263
    .local v3, "coupon":Lcom/biznessapps/model/CouponItem;
    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getLastCheckinTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getCheckinInterval()I

    move-result v10

    const v11, 0x36ee80

    mul-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->checkin_interval:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "checkinIntervalFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getCheckinInterval()I

    move-result v10

    mul-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v1    # "checkinIntervalFormat":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getCheckinTarget()I

    move-result v0

    .line 273
    .local v0, "checkinCount":I
    if-lez v0, :cond_0

    .line 274
    add-int/lit8 v0, v0, -0x1

    .line 275
    if-nez v0, :cond_2

    .line 276
    const/4 v4, 0x1

    .line 278
    :cond_2
    invoke-virtual {v3, v0}, Lcom/biznessapps/model/CouponItem;->setCheckinTarget(I)V

    .line 279
    const/4 v2, 0x1

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/biznessapps/model/CouponItem;->setLastCheckinTime(J)V

    .line 282
    invoke-direct {p0, v3}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->storeCoupon(Lcom/biznessapps/model/CouponItem;)V

    goto :goto_0

    .line 286
    .end local v0    # "checkinCount":I
    .end local v3    # "coupon":Lcom/biznessapps/model/CouponItem;
    :cond_3
    if-eqz v2, :cond_4

    .line 287
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->plugListView(Landroid/app/Activity;Z)V

    .line 289
    :cond_4
    if-eqz v4, :cond_5

    .line 294
    :goto_1
    return v6

    .line 291
    :cond_5
    if-eqz v2, :cond_6

    move v6, v7

    .line 292
    goto :goto_1

    .line 294
    :cond_6
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private initCheckinButtonListener()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->checkinButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment$4;-><init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    return-void
.end method

.method private initCheckinLocations()V
    .locals 8

    .prologue
    .line 563
    iget-object v5, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/CouponItem;

    .line 564
    .local v0, "coupon":Lcom/biznessapps/model/CouponItem;
    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem;->getLocations()Ljava/util/List;

    move-result-object v1

    .line 565
    .local v1, "couponLocations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem$CouponsLocation;>;"
    if-eqz v1, :cond_0

    .line 568
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/model/CouponItem$CouponsLocation;

    .line 569
    .local v4, "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 570
    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->setCouponName(Ljava/lang/String;)V

    .line 571
    iget-object v5, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->checkinLocations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    .end local v0    # "coupon":Lcom/biznessapps/model/CouponItem;
    .end local v1    # "couponLocations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem$CouponsLocation;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    :cond_2
    return-void
.end method

.method private initLocationManagerAndData()V
    .locals 3

    .prologue
    .line 327
    iget-boolean v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isQrCoupons:Z

    if-nez v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locManager:Landroid/location/LocationManager;

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 332
    .local v0, "lastKnownLocation":Landroid/location/Location;
    if-nez v0, :cond_1

    .line 333
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 335
    :cond_1
    if-eqz v0, :cond_2

    .line 336
    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->updateLocationData(Landroid/location/Location;)V

    .line 339
    .end local v0    # "lastKnownLocation":Landroid/location/Location;
    :cond_2
    return-void
.end method

.method private isCorrectItem(Lcom/biznessapps/model/CouponItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/biznessapps/model/CouponItem;

    .prologue
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/model/CouponItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No coupons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;Z)V
    .locals 9
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .param p2, "updateFromDB"    # Z

    .prologue
    const/4 v8, 0x0

    .line 173
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 174
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/model/CouponItem;

    invoke-direct {p0, v6}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isCorrectItem(Lcom/biznessapps/model/CouponItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 175
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/model/CouponItem;

    .line 176
    .local v3, "item":Lcom/biznessapps/model/CouponItem;
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v6

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/biznessapps/storage/StorageKeeper;->getCouponData(Ljava/lang/String;)Lcom/biznessapps/model/CouponItem;

    move-result-object v0

    .line 177
    .local v0, "couponData":Lcom/biznessapps/model/CouponItem;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, v3}, Lcom/biznessapps/model/CouponItem;->copyTo(Lcom/biznessapps/model/CouponItem;)V

    .line 180
    :cond_0
    invoke-direct {p0, v3}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->startCouponDetailActivity(Lcom/biznessapps/model/CouponItem;)V

    .line 181
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    .line 203
    .end local v0    # "couponData":Lcom/biznessapps/model/CouponItem;
    .end local v3    # "item":Lcom/biznessapps/model/CouponItem;
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 184
    .local v4, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem;>;"
    const-string v5, ""

    .line 185
    .local v5, "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/model/CouponItem;

    .line 186
    .restart local v3    # "item":Lcom/biznessapps/model/CouponItem;
    if-eqz p2, :cond_3

    .line 187
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v6

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/biznessapps/storage/StorageKeeper;->getCouponData(Ljava/lang/String;)Lcom/biznessapps/model/CouponItem;

    move-result-object v0

    .line 188
    .restart local v0    # "couponData":Lcom/biznessapps/model/CouponItem;
    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {v0, v3}, Lcom/biznessapps/model/CouponItem;->copyTo(Lcom/biznessapps/model/CouponItem;)V

    .line 192
    .end local v0    # "couponData":Lcom/biznessapps/model/CouponItem;
    :cond_3
    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    .end local v3    # "item":Lcom/biznessapps/model/CouponItem;
    :cond_4
    new-instance v1, Lcom/biznessapps/layout/adapters/CouponAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$layout;->coupon_row:I

    invoke-direct {v1, v6, v4, v7}, Lcom/biznessapps/layout/adapters/CouponAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 197
    .local v1, "ex":Lcom/biznessapps/layout/adapters/CouponAdapter;
    iget-object v6, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v6, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    const-string v6, "No coupons"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->initListViewListener()V

    goto :goto_0
.end method

.method private removeLocationListener()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 446
    :cond_0
    return-void
.end method

.method private showLocationAbsentDialog()V
    .locals 5

    .prologue
    .line 578
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 579
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$layout;->common_dialog_layout:I

    invoke-static {v3, v4}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 580
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 581
    sget v3, Lcom/biznessapps/layout/R$string;->location_absent:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 582
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 583
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->yes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/biznessapps/fragments/coupons/CouponsListFragment$5;

    invoke-direct {v4, p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment$5;-><init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 588
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 589
    return-void
.end method

.method private startCouponDetailActivity(Lcom/biznessapps/model/CouponItem;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/model/CouponItem;

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 250
    const-string v1, "COUPON_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 251
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 252
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "COUPON_DETAIL_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "QR_COUPON_TYPE"

    iget-boolean v2, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isQrCoupons:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    :cond_0
    return-void
.end method

.method private startScanning()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/layout/views/scanning/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    return-void
.end method

.method private storeCoupon(Lcom/biznessapps/model/CouponItem;)V
    .locals 2
    .param p1, "coupon"    # Lcom/biznessapps/model/CouponItem;

    .prologue
    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "dataToStore":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/biznessapps/storage/StorageKeeper;->addCoupons(Ljava/util/List;)V

    .line 302
    return-void
.end method

.method private updateGpsCheckins()I
    .locals 17

    .prologue
    .line 450
    const/4 v3, 0x0

    .line 451
    .local v3, "checkinWasChanged":Z
    const/4 v7, 0x0

    .line 452
    .local v7, "couponUnlocked":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/model/CouponItem;

    .line 453
    .local v4, "coupon":Lcom/biznessapps/model/CouponItem;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/biznessapps/model/CouponItem;->getLocations()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 456
    invoke-virtual {v4}, Lcom/biznessapps/model/CouponItem;->getLocations()Ljava/util/List;

    move-result-object v6

    .line 457
    .local v6, "couponLocations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem$CouponsLocation;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/biznessapps/model/CouponItem$CouponsLocation;

    .line 458
    .local v11, "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v11}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v11}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 461
    new-instance v12, Landroid/location/Location;

    const-string v13, ""

    invoke-direct {v12, v13}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 463
    .local v12, "locItem":Landroid/location/Location;
    :try_start_0
    invoke-virtual {v11}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Landroid/location/Location;->setLatitude(D)V

    .line 464
    invoke-virtual {v11}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->currentLocation:Landroid/location/Location;

    invoke-virtual {v13, v12}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    .line 469
    .local v5, "couponDistance":F
    const v13, 0x42b6ed45

    cmpg-float v13, v5, v13

    if-gez v13, :cond_1

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v4}, Lcom/biznessapps/model/CouponItem;->getLastCheckinTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-virtual {v4}, Lcom/biznessapps/model/CouponItem;->getCheckinInterval()I

    move-result v15

    const v16, 0x36ee80

    mul-int v15, v15, v16

    int-to-long v15, v15

    cmp-long v13, v13, v15

    if-gez v13, :cond_2

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/biznessapps/layout/R$string;->checkin_interval:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "checkinIntervalFormat":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v4}, Lcom/biznessapps/model/CouponItem;->getCheckinInterval()I

    move-result v16

    mul-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 465
    .end local v2    # "checkinIntervalFormat":Ljava/lang/String;
    .end local v5    # "couponDistance":F
    :catch_0
    move-exception v8

    .line 466
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 478
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "couponDistance":F
    :cond_2
    invoke-virtual {v4}, Lcom/biznessapps/model/CouponItem;->getCheckinTarget()I

    move-result v1

    .line 479
    .local v1, "checkinCount":I
    if-lez v1, :cond_0

    .line 480
    add-int/lit8 v1, v1, -0x1

    .line 481
    if-nez v1, :cond_3

    .line 482
    const/4 v7, 0x1

    .line 484
    :cond_3
    invoke-virtual {v4, v1}, Lcom/biznessapps/model/CouponItem;->setCheckinTarget(I)V

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Lcom/biznessapps/model/CouponItem;->setLastCheckinTime(J)V

    .line 486
    const/4 v3, 0x1

    .line 488
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->storeCoupon(Lcom/biznessapps/model/CouponItem;)V

    goto/16 :goto_0

    .line 494
    .end local v1    # "checkinCount":I
    .end local v4    # "coupon":Lcom/biznessapps/model/CouponItem;
    .end local v5    # "couponDistance":F
    .end local v6    # "couponLocations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem$CouponsLocation;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "item":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    .end local v12    # "locItem":Landroid/location/Location;
    :cond_4
    if-eqz v3, :cond_5

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->plugListView(Landroid/app/Activity;Z)V

    .line 498
    :cond_5
    if-eqz v7, :cond_6

    .line 499
    const/4 v13, 0x1

    .line 503
    :goto_3
    return v13

    .line 500
    :cond_6
    if-eqz v3, :cond_7

    .line 501
    const/4 v13, 0x0

    goto :goto_3

    .line 503
    :cond_7
    const/4 v13, -0x1

    goto :goto_3
.end method

.method private updateLocationData(Landroid/location/Location;)V
    .locals 13
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x45a50000    # 5280.0f

    .line 411
    if-eqz p1, :cond_0

    .line 412
    iput-object p1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->currentLocation:Landroid/location/Location;

    .line 416
    :cond_0
    const/4 v2, 0x0

    .line 417
    .local v2, "distance":F
    iget-object v8, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->checkinLocations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/CouponItem$CouponsLocation;

    .line 418
    .local v0, "checkin":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    new-instance v7, Landroid/location/Location;

    const-string v8, ""

    invoke-direct {v7, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 420
    .local v7, "locItem":Landroid/location/Location;
    :try_start_0
    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLatitude()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 421
    invoke-virtual {v0}, Lcom/biznessapps/model/CouponItem$CouponsLocation;->getLongitude()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_1
    invoke-virtual {p1, v7}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 426
    .local v1, "currentDistance":F
    cmpg-float v8, v1, v2

    if-ltz v8, :cond_2

    const/4 v8, 0x0

    cmpl-float v8, v2, v8

    if-nez v8, :cond_1

    .line 427
    :cond_2
    move v2, v1

    goto :goto_0

    .line 422
    .end local v1    # "currentDistance":F
    :catch_0
    move-exception v3

    .line 423
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 431
    .end local v0    # "checkin":Lcom/biznessapps/model/CouponItem$CouponsLocation;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "locItem":Landroid/location/Location;
    :cond_3
    const v8, 0x4051eb85    # 3.28f

    mul-float v4, v2, v8

    .line 432
    .local v4, "feetsDistance":F
    cmpl-float v8, v4, v10

    if-lez v8, :cond_4

    .line 433
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->n_miles_from_location:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "format":Ljava/lang/String;
    div-float/2addr v4, v10

    .line 435
    iget-object v8, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locationTextView:Landroid/widget/TextView;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_2
    return-void

    .line 437
    .end local v5    # "format":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$string;->n_feet_from_location:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 438
    .restart local v5    # "format":Ljava/lang/String;
    iget-object v8, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locationTextView:Landroid/widget/TextView;

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COUPONS_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    .line 140
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/biznessapps/layout/R$layout;->coupons_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    iget-boolean v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isQrCoupons:Z

    if-eqz v1, :cond_0

    const-string v0, "http://www.biznessapps.com/iphone/qrcoupons.php?app_code=%s&version=4&tab_id=%s"

    .line 119
    .local v0, "mainPartUrlFormat":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 118
    .end local v0    # "mainPartUrlFormat":Ljava/lang/String;
    :cond_0
    const-string v0, "http://www.biznessapps.com/iphone/coupons.php?app_code=%s&version=4&tab_id=%s"

    goto :goto_0
.end method

.method public isQrCoupons()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isQrCoupons:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 219
    if-ne v6, p2, :cond_2

    .line 220
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 221
    const-string v5, "COUPON_EXTRA"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/model/CouponItem;

    .line 222
    .local v3, "couponExtra":Lcom/biznessapps/model/CouponItem;
    iget-object v5, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/CouponItem;

    .line 224
    .local v2, "coupon":Lcom/biznessapps/model/CouponItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/biznessapps/model/CouponItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 225
    invoke-virtual {v3, v2}, Lcom/biznessapps/model/CouponItem;->copyTo(Lcom/biznessapps/model/CouponItem;)V

    .line 226
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->plugListView(Landroid/app/Activity;Z)V

    .line 245
    .end local v2    # "coupon":Lcom/biznessapps/model/CouponItem;
    .end local v3    # "couponExtra":Lcom/biznessapps/model/CouponItem;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    if-eqz p3, :cond_1

    if-ne p1, v6, :cond_1

    .line 232
    const-string v5, "SCAN_RESULT"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "contents":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    invoke-direct {p0, v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->increaseCheckin(Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "checkinResult":I
    if-ne v0, v6, :cond_3

    .line 238
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->have_unlocked_coupon:I

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_0

    .line 239
    :cond_3
    if-nez v0, :cond_4

    .line 240
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->checking_more:I

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_0

    .line 241
    :cond_4
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->checking_unsuccess:I

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 80
    iget-boolean v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isQrCoupons:Z

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->qr_scan_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->qrButton:Landroid/widget/ImageButton;

    .line 82
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->qrButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->qrButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/biznessapps/fragments/coupons/CouponsListFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment$1;-><init>(Lcom/biznessapps/fragments/coupons/CouponsListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->root:Landroid/view/ViewGroup;

    return-object v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->coupons_gps_checkin:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    .local v0, "gpsCheckinRoot":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->checkin_location_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locationTextView:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->checkin_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->checkinButton:Landroid/widget/Button;

    .line 94
    iget-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->checkinButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 95
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->initCheckinButtonListener()V

    .line 96
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->initLocationManagerAndData()V

    .line 97
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->checkGpsEnabling()V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/CouponItem;

    .line 212
    .local v0, "item":Lcom/biznessapps/model/CouponItem;
    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->startCouponDetailActivity(Lcom/biznessapps/model/CouponItem;)V

    .line 215
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 310
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonListFragment;->onStart()V

    .line 311
    iget-boolean v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isQrCoupons:Z

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->initLocationManagerAndData()V

    .line 313
    iget-object v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->locManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonListFragment;->onStop()V

    .line 321
    iget-boolean v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isQrCoupons:Z

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->removeLocationListener()V

    .line 324
    :cond_0
    return-void
.end method

.method public setQrCoupons(Z)V
    .locals 0
    .param p1, "isQrCoupons"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isQrCoupons:Z

    .line 75
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseCoupons(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "parsedItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem;>;"
    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->doCouponsPrehandling(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    .line 126
    invoke-virtual {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUPONS_LIST_PROPERTY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->isQrCoupons:Z

    if-nez v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->initCheckinLocations()V

    .line 134
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/fragments/coupons/CouponsListFragment;->plugListView(Landroid/app/Activity;Z)V

    .line 135
    return-void
.end method
