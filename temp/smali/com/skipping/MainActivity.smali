.class public Lcom/skipping/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/google/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skipping/MainActivity$AnimParams;
    }
.end annotation


# static fields
.field static final ITEM_SKU:Ljava/lang/String; = "com.skipping.disable.ads"

.field private static final TAG:Ljava/lang/String; = "com.skipping.inappbilling"


# instance fields
.field ScreenSizeHeight:I

.field ScreenSizeWidth:I

.field WeightUnitForChart:I

.field private adView:Lcom/google/ads/AdView;

.field private alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

.field animParams:Lcom/skipping/MainActivity$AnimParams;

.field app:Landroid/view/View;

.field base64EncodedPublicKey:Ljava/lang/String;

.field disable_ads:Z

.field private interstitialAds:Lcom/google/ads/InterstitialAd;

.field mConsumeFinishedListener:Lcom/skipping/inappbilling/util/IabHelper$OnConsumeFinishedListener;

.field mHelper:Lcom/skipping/inappbilling/util/IabHelper;

.field mPurchaseFinishedListener:Lcom/skipping/inappbilling/util/IabHelper$OnIabPurchaseFinishedListener;

.field mReceivedInventoryListener:Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;

.field menu:Landroid/view/View;

.field menuOut:Z

.field preferences:Landroid/content/SharedPreferences;

.field prog_ver:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skipping/MainActivity;->menuOut:Z

    .line 61
    new-instance v0, Lcom/skipping/MainActivity$AnimParams;

    invoke-direct {v0}, Lcom/skipping/MainActivity$AnimParams;-><init>()V

    iput-object v0, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    .line 72
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsOzXFoK+qpj4/y8htYYtjpGjPrLI98GOKExqiXr8wb7IaetvPOYJG+aJtReJYEjJyGvTz+Lr0YK5DejrxrlPiYMwr7McQq3RG0sbWNBtaZzc4z6l+CEJ+BMsqq813kqvFjnpwsJ8aitW8JdhIXPtamIn5zwlSS+fnhJniiThVTpLjfM3uYwdtmjDzKxkxfZSzZw9EknJ+2dLk+wfGkoK4/rq+UUOxBD1f1KIAwA4whIww14ch05D2kc962Pj/ejI5JKkp8FoS1O/F93Rlldr7juXzBn5cs/I1qlyPmKcgqAlMTksmHh00PWTg15BSPgSJOdWsNXzTd/BFCGO70cB/QIDAQAB"

    iput-object v0, p0, Lcom/skipping/MainActivity;->base64EncodedPublicKey:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skipping/MainActivity;->interstitialAds:Lcom/google/ads/InterstitialAd;

    .line 922
    new-instance v0, Lcom/skipping/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/skipping/MainActivity$1;-><init>(Lcom/skipping/MainActivity;)V

    iput-object v0, p0, Lcom/skipping/MainActivity;->mPurchaseFinishedListener:Lcom/skipping/inappbilling/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 942
    new-instance v0, Lcom/skipping/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/skipping/MainActivity$2;-><init>(Lcom/skipping/MainActivity;)V

    iput-object v0, p0, Lcom/skipping/MainActivity;->mReceivedInventoryListener:Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;

    .line 956
    new-instance v0, Lcom/skipping/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/skipping/MainActivity$3;-><init>(Lcom/skipping/MainActivity;)V

    iput-object v0, p0, Lcom/skipping/MainActivity;->mConsumeFinishedListener:Lcom/skipping/inappbilling/util/IabHelper$OnConsumeFinishedListener;

    .line 52
    return-void
.end method


# virtual methods
.method public About(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 691
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 692
    return-void
.end method

.method public Add_weight(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 590
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/AddWeightActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 591
    return-void
.end method

.method public Back(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 556
    move-object v4, p0

    .line 557
    .local v4, "me":Lcom/skipping/MainActivity;
    move-object v1, v4

    .line 560
    .local v1, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/skipping/MainActivity;->app:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 561
    .local v5, "w":I
    iget-object v6, p0, Lcom/skipping/MainActivity;->app:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 562
    .local v2, "h":I
    iget-object v6, p0, Lcom/skipping/MainActivity;->app:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v3, v6

    .line 564
    .local v3, "left":I
    iget-boolean v6, p0, Lcom/skipping/MainActivity;->menuOut:Z

    if-nez v6, :cond_0

    .line 566
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v3

    invoke-direct {v0, v10, v6, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 567
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/skipping/MainActivity;->menu:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v6, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    add-int v7, v3, v5

    invoke-virtual {v6, v3, v11, v7, v2}, Lcom/skipping/MainActivity$AnimParams;->init(IIII)V

    .line 575
    :goto_0
    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 576
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 578
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 580
    iget-object v6, p0, Lcom/skipping/MainActivity;->app:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 585
    return-void

    .line 571
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v6, v3

    int-to-float v6, v6

    invoke-direct {v0, v10, v6, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 572
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    invoke-virtual {v6, v11, v11, v5, v2}, Lcom/skipping/MainActivity$AnimParams;->init(IIII)V

    goto :goto_0
.end method

.method public DisableAds(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/skipping/MainActivity;->mHelper:Lcom/skipping/inappbilling/util/IabHelper;

    const-string v2, "com.skipping.disable.ads"

    const/16 v3, 0x2711

    .line 706
    iget-object v4, p0, Lcom/skipping/MainActivity;->mPurchaseFinishedListener:Lcom/skipping/inappbilling/util/IabHelper$OnIabPurchaseFinishedListener;

    const-string v5, "Skipping"

    move-object v1, p0

    .line 705
    invoke-virtual/range {v0 .. v5}, Lcom/skipping/inappbilling/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/skipping/inappbilling/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v7

    .line 740
    .local v7, "easyTracker":Lcom/google/analytics/tracking/android/EasyTracker;
    const-string v0, "DisableAds"

    .line 741
    const-string v1, "DisableAds"

    .line 742
    const-string v2, "DisableAdsPressed"

    .line 740
    invoke-static {v0, v1, v2, v8}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 739
    invoke-virtual {v7, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->send(Ljava/util/Map;)V

    .line 747
    return-void

    .line 708
    .end local v7    # "easyTracker":Lcom/google/analytics/tracking/android/EasyTracker;
    :catch_0
    move-exception v6

    .line 709
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 712
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v7

    .line 714
    .restart local v7    # "easyTracker":Lcom/google/analytics/tracking/android/EasyTracker;
    const-string v0, "ErrorDisableAds"

    .line 715
    const-string v1, "ErrorDisableAds"

    .line 716
    const-string v2, "ErrorDisableAds"

    .line 714
    invoke-static {v0, v1, v2, v8}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 713
    invoke-virtual {v7, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public Feedback(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 874
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 875
    .local v3, "i":Landroid/content/Intent;
    const-string v7, "message/rfc822"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v7, "android.intent.extra.EMAIL"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "ddshnn@gmail.com"

    aput-object v9, v8, v10

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v7, "android.intent.extra.SUBJECT"

    const v8, 0x7f05000f

    invoke-virtual {p0, v8}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const/4 v4, 0x0

    .line 883
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/skipping/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/skipping/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 888
    :goto_0
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 890
    .local v6, "version":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 891
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, "gmt":Ljava/lang/String;
    const-string v7, "android.intent.extra.TEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "System info( Model:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/skipping/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " OS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 894
    const-string v9, " App v:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "). "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f05003a

    invoke-virtual {p0, v9}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 893
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    :try_start_1
    const-string v7, "Send mail..."

    invoke-static {v3, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 902
    :goto_1
    return-void

    .line 884
    .end local v2    # "gmt":Ljava/lang/String;
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local v6    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 898
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "gmt":Ljava/lang/String;
    .restart local v5    # "tz":Ljava/util/TimeZone;
    .restart local v6    # "version":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 899
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v7, "There are no email clients installed."

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public GetUserWeight(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/WeightActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 597
    return-void
.end method

.method public GetUserWeightUnit(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 603
    iget-object v4, p0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "WeightUnitForChart"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/skipping/MainActivity;->WeightUnitForChart:I

    .line 606
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 607
    .local v0, "dialog":Landroid/app/Dialog;
    const v4, 0x7f03000c

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 609
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    const/high16 v4, 0x7f0a0000

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 611
    .local v1, "dialogButton":Landroid/widget/Button;
    const v4, 0x7f0a005a

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 615
    .local v2, "dialogButton1":Landroid/widget/Button;
    const v4, 0x7f0a005b

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 616
    .local v3, "radioButtonGroup":Landroid/widget/RadioGroup;
    iget v4, p0, Lcom/skipping/MainActivity;->WeightUnitForChart:I

    if-nez v4, :cond_0

    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 624
    :goto_0
    new-instance v4, Lcom/skipping/MainActivity$5;

    invoke-direct {v4, p0, v3, v0}, Lcom/skipping/MainActivity$5;-><init>(Lcom/skipping/MainActivity;Landroid/widget/RadioGroup;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    new-instance v4, Lcom/skipping/MainActivity$6;

    invoke-direct {v4, p0, v0}, Lcom/skipping/MainActivity$6;-><init>(Lcom/skipping/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 662
    return-void

    .line 617
    :cond_0
    iget v4, p0, Lcom/skipping/MainActivity;->WeightUnitForChart:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const v4, 0x7f0a005d

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 619
    :cond_1
    const v4, 0x7f0a005e

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0
.end method

.method public Level(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 683
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/LevelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 684
    return-void
.end method

.method public Notification(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 665
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/NotificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 666
    return-void
.end method

.method public RestartNotifications()V
    .locals 49

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "MondayWorkout1OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 380
    .local v12, "MondayWorkout1OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "TuesdayWorkout1OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 381
    .local v36, "TuesdayWorkout1OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "WednesdayWorkout1OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 382
    .local v42, "WednesdayWorkout1OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "ThursdayWorkout1OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 383
    .local v30, "ThursdayWorkout1OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "FridayWorkout1OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 384
    .local v6, "FridayWorkout1OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SaturdayWorkout1OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 385
    .local v18, "SaturdayWorkout1OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SundayWorkout1OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 386
    .local v24, "SundayWorkout1OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "MondayWorkout2OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 387
    .local v15, "MondayWorkout2OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "TuesdayWorkout2OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 388
    .local v39, "TuesdayWorkout2OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "WednesdayWorkout2OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 389
    .local v45, "WednesdayWorkout2OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "ThursdayWorkout2OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v33

    .line 390
    .local v33, "ThursdayWorkout2OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "FridayWorkout2OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 391
    .local v9, "FridayWorkout2OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SaturdayWorkout2OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 392
    .local v21, "SaturdayWorkout2OnOff":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SundayWorkout2OnOff"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 399
    .local v27, "SundayWorkout2OnOff":Z
    if-eqz v12, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_0

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "MondayWorkout1Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 402
    .local v11, "MondayWorkout1Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "MondayWorkout1Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 404
    .local v10, "MondayWorkout1Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10, v11}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1MondayTimer(Landroid/content/Context;II)V

    .line 408
    .end local v10    # "MondayWorkout1Hour":I
    .end local v11    # "MondayWorkout1Minute":I
    :cond_0
    if-eqz v15, :cond_1

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "MondayWorkout2Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 411
    .local v14, "MondayWorkout2Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "MondayWorkout2Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 412
    .local v13, "MondayWorkout2Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v13, v14}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2MondayTimer(Landroid/content/Context;II)V

    .line 416
    .end local v13    # "MondayWorkout2Hour":I
    .end local v14    # "MondayWorkout2Minute":I
    :cond_1
    if-eqz v36, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_2

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "TuesdayWorkout1Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v35

    .line 419
    .local v35, "TuesdayWorkout1Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "TuesdayWorkout1Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 420
    .local v34, "TuesdayWorkout1Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1TuesdayTimer(Landroid/content/Context;II)V

    .line 424
    .end local v34    # "TuesdayWorkout1Hour":I
    .end local v35    # "TuesdayWorkout1Minute":I
    :cond_2
    if-eqz v39, :cond_3

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_3

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "TuesdayWorkout2Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 427
    .local v38, "TuesdayWorkout2Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "TuesdayWorkout2Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v37

    .line 428
    .local v37, "TuesdayWorkout2Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2TuesdayTimer(Landroid/content/Context;II)V

    .line 432
    .end local v37    # "TuesdayWorkout2Hour":I
    .end local v38    # "TuesdayWorkout2Minute":I
    :cond_3
    if-eqz v42, :cond_4

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_4

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "WednesdayWorkout1Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v41

    .line 435
    .local v41, "WednesdayWorkout1Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "WednesdayWorkout1Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    .line 436
    .local v40, "WednesdayWorkout1Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1WednesdayTimer(Landroid/content/Context;II)V

    .line 440
    .end local v40    # "WednesdayWorkout1Hour":I
    .end local v41    # "WednesdayWorkout1Minute":I
    :cond_4
    if-eqz v45, :cond_5

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_5

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "WednesdayWorkout2Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v44

    .line 443
    .local v44, "WednesdayWorkout2Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "WednesdayWorkout2Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v43

    .line 444
    .local v43, "WednesdayWorkout2Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2WednesdayTimer(Landroid/content/Context;II)V

    .line 448
    .end local v43    # "WednesdayWorkout2Hour":I
    .end local v44    # "WednesdayWorkout2Minute":I
    :cond_5
    if-eqz v30, :cond_6

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_6

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "ThursdayWorkout1Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    .line 451
    .local v29, "ThursdayWorkout1Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "ThursdayWorkout1Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 452
    .local v28, "ThursdayWorkout1Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1ThursdayTimer(Landroid/content/Context;II)V

    .line 456
    .end local v28    # "ThursdayWorkout1Hour":I
    .end local v29    # "ThursdayWorkout1Minute":I
    :cond_6
    if-eqz v33, :cond_7

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_7

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "ThursdayWorkout2Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v32

    .line 459
    .local v32, "ThursdayWorkout2Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "ThursdayWorkout2Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v31

    .line 460
    .local v31, "ThursdayWorkout2Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2ThursdayTimer(Landroid/content/Context;II)V

    .line 464
    .end local v31    # "ThursdayWorkout2Hour":I
    .end local v32    # "ThursdayWorkout2Minute":I
    :cond_7
    if-eqz v6, :cond_8

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_8

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "FridayWorkout1Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 467
    .local v5, "FridayWorkout1Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "FridayWorkout1Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 468
    .local v4, "FridayWorkout1Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4, v5}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1FridayTimer(Landroid/content/Context;II)V

    .line 472
    .end local v4    # "FridayWorkout1Hour":I
    .end local v5    # "FridayWorkout1Minute":I
    :cond_8
    if-eqz v9, :cond_9

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_9

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "FridayWorkout2Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 475
    .local v8, "FridayWorkout2Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "FridayWorkout2Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 476
    .local v7, "FridayWorkout2Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7, v8}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2FridayTimer(Landroid/content/Context;II)V

    .line 480
    .end local v7    # "FridayWorkout2Hour":I
    .end local v8    # "FridayWorkout2Minute":I
    :cond_9
    if-eqz v18, :cond_a

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_a

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SaturdayWorkout1Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 483
    .local v17, "SaturdayWorkout1Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SaturdayWorkout1Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 484
    .local v16, "SaturdayWorkout1Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1SaturdayTimer(Landroid/content/Context;II)V

    .line 488
    .end local v16    # "SaturdayWorkout1Hour":I
    .end local v17    # "SaturdayWorkout1Minute":I
    :cond_a
    if-eqz v21, :cond_b

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_b

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SaturdayWorkout2Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 491
    .local v20, "SaturdayWorkout2Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SaturdayWorkout2Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 492
    .local v19, "SaturdayWorkout2Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2SaturdayTimer(Landroid/content/Context;II)V

    .line 496
    .end local v19    # "SaturdayWorkout2Hour":I
    .end local v20    # "SaturdayWorkout2Minute":I
    :cond_b
    if-eqz v24, :cond_c

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_c

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SundayWorkout1Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 499
    .local v23, "SundayWorkout1Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SundayWorkout1Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 500
    .local v22, "SundayWorkout1Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout1SundayTimer(Landroid/content/Context;II)V

    .line 504
    .end local v22    # "SundayWorkout1Hour":I
    .end local v23    # "SundayWorkout1Minute":I
    :cond_c
    if-eqz v27, :cond_d

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    if-eqz v46, :cond_d

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SundayWorkout2Minute"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 507
    .local v26, "SundayWorkout2Minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v46, v0

    const-string v47, "SundayWorkout2Hour"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 508
    .local v25, "SundayWorkout2Hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AlarmManagerBroadcastReceiver;->Workout2SundayTimer(Landroid/content/Context;II)V

    .line 519
    .end local v25    # "SundayWorkout2Hour":I
    .end local v26    # "SundayWorkout2Minute":I
    :cond_d
    return-void
.end method

.method public Review(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 853
    const-string v1, "com.skipping"

    .line 855
    .local v1, "appName":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.skipping"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://play.google.com/store/apps/details?id=com.skipping"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public Setting(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 670
    return-void
.end method

.method public Share(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f05003b

    const v5, 0x7f05000f

    .line 863
    const-string v0, "com.skipping"

    .line 865
    .local v0, "appName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v2, "android.intent.extra.SUBJECT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    const v2, 0x7f050035

    invoke-virtual {p0, v2}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 871
    return-void
.end method

.method public Start_free_workout(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 677
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/TrainingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "practice"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 679
    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 680
    return-void
.end method

.method public Start_workout(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 673
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/TrainingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 674
    return-void
.end method

.method public Statistics(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 687
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/skipping/StatisticsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 688
    return-void
.end method

.method public Translate(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 812
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 813
    .local v0, "dialog":Landroid/app/Dialog;
    const v3, 0x7f030010

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 815
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    const/high16 v3, 0x7f0a0000

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 820
    .local v1, "dialogButton":Landroid/widget/Button;
    new-instance v3, Lcom/skipping/MainActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/skipping/MainActivity$7;-><init>(Lcom/skipping/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    const v3, 0x7f0a005a

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 838
    .local v2, "dialogButton1":Landroid/widget/Button;
    new-instance v3, Lcom/skipping/MainActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/skipping/MainActivity$8;-><init>(Lcom/skipping/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 848
    return-void
.end method

.method public consumeItem()V
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/skipping/MainActivity;->mHelper:Lcom/skipping/inappbilling/util/IabHelper;

    iget-object v1, p0, Lcom/skipping/MainActivity;->mReceivedInventoryListener:Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/skipping/inappbilling/util/IabHelper;->queryInventoryAsync(Lcom/skipping/inappbilling/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 939
    return-void
.end method

.method layoutApp(Z)V
    .locals 5
    .param p1, "menuOut"    # Z

    .prologue
    .line 750
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "layout ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    iget v2, v2, Lcom/skipping/MainActivity$AnimParams;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    iget v2, v2, Lcom/skipping/MainActivity$AnimParams;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    iget v2, v2, Lcom/skipping/MainActivity$AnimParams;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    iget-object v2, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    iget v2, v2, Lcom/skipping/MainActivity$AnimParams;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/skipping/MainActivity;->app:Landroid/view/View;

    iget-object v1, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    iget v1, v1, Lcom/skipping/MainActivity$AnimParams;->left:I

    iget-object v2, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    iget v2, v2, Lcom/skipping/MainActivity$AnimParams;->top:I

    iget-object v3, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    iget v3, v3, Lcom/skipping/MainActivity$AnimParams;->right:I

    iget-object v4, p0, Lcom/skipping/MainActivity;->animParams:Lcom/skipping/MainActivity$AnimParams;

    iget v4, v4, Lcom/skipping/MainActivity$AnimParams;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 754
    iget-object v0, p0, Lcom/skipping/MainActivity;->app:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 756
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/skipping/MainActivity;->mHelper:Lcom/skipping/inappbilling/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/skipping/inappbilling/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 915
    if-nez v0, :cond_0

    .line 916
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 918
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/skipping/MainActivity;->menuOut:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/skipping/MainActivity;->menuOut:Z

    .line 766
    iget-boolean v0, p0, Lcom/skipping/MainActivity;->menuOut:Z

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/skipping/MainActivity;->menu:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 769
    :cond_0
    iget-boolean v0, p0, Lcom/skipping/MainActivity;->menuOut:Z

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->layoutApp(Z)V

    .line 771
    return-void

    .line 765
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 777
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 783
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v13, 0x7f030004

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/skipping/MainActivity;->setContentView(I)V

    .line 119
    new-instance v13, Lcom/skipping/inappbilling/util/IabHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/skipping/MainActivity;->base64EncodedPublicKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/skipping/inappbilling/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/skipping/MainActivity;->mHelper:Lcom/skipping/inappbilling/util/IabHelper;

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->mHelper:Lcom/skipping/inappbilling/util/IabHelper;

    .line 121
    new-instance v14, Lcom/skipping/MainActivity$4;

    .line 120
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/skipping/MainActivity$4;-><init>(Lcom/skipping/MainActivity;)V

    invoke-virtual {v13, v14}, Lcom/skipping/inappbilling/util/IabHelper;->startSetup(Lcom/skipping/inappbilling/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/skipping/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 160
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/skipping/MainActivity;->ScreenSizeWidth:I

    .line 161
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/skipping/MainActivity;->ScreenSizeHeight:I

    .line 171
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    .line 173
    new-instance v13, Lcom/skipping/AlarmManagerBroadcastReceiver;

    invoke-direct {v13}, Lcom/skipping/AlarmManagerBroadcastReceiver;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/skipping/MainActivity;->alarm:Lcom/skipping/AlarmManagerBroadcastReceiver;

    .line 175
    const v13, 0x7f0a001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/skipping/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/skipping/MainActivity;->menu:Landroid/view/View;

    .line 176
    const v13, 0x7f0a001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/skipping/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/skipping/MainActivity;->app:Landroid/view/View;

    .line 179
    const v13, 0x7f0a001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/skipping/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/skipping/MainActivity;->prog_ver:Landroid/widget/Button;

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/skipping/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 183
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/skipping/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 184
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->prog_ver:Landroid/widget/Button;

    new-instance v14, Ljava/lang/StringBuilder;

    const v15, 0x7f050039

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v14, "started_times"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 193
    .local v12, "started_times":I
    add-int/lit8 v12, v12, 0x1

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 195
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "started_times"

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/skipping/MainActivity;->RestartNotifications()V

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v14, "disable_ads"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/skipping/MainActivity;->disable_ads:Z

    .line 203
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/skipping/MainActivity;->disable_ads:Z

    if-nez v13, :cond_0

    .line 205
    new-instance v13, Lcom/google/ads/AdView;

    sget-object v14, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    const-string v15, "ca-app-pub-8661822564276571/3559185041"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14, v15}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/skipping/MainActivity;->adView:Lcom/google/ads/AdView;

    .line 209
    const v13, 0x7f0a0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/skipping/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 212
    .local v9, "layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->adView:Lcom/google/ads/AdView;

    new-instance v14, Lcom/google/ads/AdRequest;

    invoke-direct {v14}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v13, v14}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 222
    .end local v9    # "layout":Landroid/widget/LinearLayout;
    :cond_0
    new-instance v13, Lcom/google/ads/InterstitialAd;

    const-string v14, "ca-app-pub-5156952701690991/9334908865"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/skipping/MainActivity;->interstitialAds:Lcom/google/ads/InterstitialAd;

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->interstitialAds:Lcom/google/ads/InterstitialAd;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v14, "MillisLastStartLong"

    const-wide/16 v15, 0x1

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 228
    .local v1, "MillisLastStartLong":Ljava/lang/Long;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 229
    .local v5, "calendar":Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 231
    .local v2, "MillisNowLong":J
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, v2, v13

    const-wide/32 v15, 0x493e0

    cmp-long v13, v13, v15

    if-lez v13, :cond_1

    .line 232
    new-instance v4, Lcom/google/ads/AdRequest;

    invoke-direct {v4}, Lcom/google/ads/AdRequest;-><init>()V

    .line 233
    .local v4, "adr":Lcom/google/ads/AdRequest;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/skipping/MainActivity;->interstitialAds:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v13, v4}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 239
    .end local v4    # "adr":Lcom/google/ads/AdRequest;
    :cond_1
    return-void

    .line 186
    .end local v1    # "MillisLastStartLong":Ljava/lang/Long;
    .end local v2    # "MillisNowLong":J
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "started_times":I
    :catch_0
    move-exception v7

    .line 187
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 353
    iget-object v0, p0, Lcom/skipping/MainActivity;->mHelper:Lcom/skipping/inappbilling/util/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skipping/MainActivity;->mHelper:Lcom/skipping/inappbilling/util/IabHelper;

    invoke-virtual {v0}, Lcom/skipping/inappbilling/util/IabHelper;->dispose()V

    .line 354
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/skipping/MainActivity;->mHelper:Lcom/skipping/inappbilling/util/IabHelper;

    .line 356
    iget-object v0, p0, Lcom/skipping/MainActivity;->adView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/skipping/MainActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 359
    :cond_1
    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 250
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0
    .param p1, "ad"    # Lcom/google/ads/Ad;
    .param p2, "error"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 255
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 540
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->Back(Landroid/view/View;)V

    .line 546
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 542
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 543
    invoke-virtual {p0, v0}, Lcom/skipping/MainActivity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 260
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 266
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 5
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 270
    iget-object v4, p0, Lcom/skipping/MainActivity;->interstitialAds:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v4}, Lcom/google/ads/InterstitialAd;->isReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    iget-object v4, p0, Lcom/skipping/MainActivity;->interstitialAds:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v4}, Lcom/google/ads/InterstitialAd;->show()V

    .line 274
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 275
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 277
    .local v0, "MillisNowLong":J
    iget-object v4, p0, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 278
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "MillisLastStartLong"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    .end local v0    # "MillisNowLong":J
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 364
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 365
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 370
    invoke-static {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 371
    return-void
.end method
