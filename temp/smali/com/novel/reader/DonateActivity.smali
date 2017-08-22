.class public Lcom/novel/reader/DonateActivity;
.super Lcom/novel/reader/NovelReaderBaseActivity;
.source "DonateActivity.java"


# instance fields
.field private donate_btn:Landroid/widget/Button;

.field private iap:Lcom/android/vending/billing/InAppBillingForNovel;

.field private validate_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/novel/reader/NovelReaderBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/DonateActivity;)Lcom/android/vending/billing/InAppBillingForNovel;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/DonateActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/novel/reader/DonateActivity;->iap:Lcom/android/vending/billing/InAppBillingForNovel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/novel/reader/DonateActivity;Lcom/android/vending/billing/InAppBillingForNovel;)Lcom/android/vending/billing/InAppBillingForNovel;
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/DonateActivity;
    .param p1, "x1"    # Lcom/android/vending/billing/InAppBillingForNovel;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/novel/reader/DonateActivity;->iap:Lcom/android/vending/billing/InAppBillingForNovel;

    return-object p1
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f0e00e5

    invoke-virtual {p0, v0}, Lcom/novel/reader/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novel/reader/DonateActivity;->donate_btn:Landroid/widget/Button;

    .line 72
    const v0, 0x7f0e00e6

    invoke-virtual {p0, v0}, Lcom/novel/reader/DonateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novel/reader/DonateActivity;->validate_btn:Landroid/widget/Button;

    .line 73
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novel/reader/DonateActivity;->donate_btn:Landroid/widget/Button;

    new-instance v1, Lcom/novel/reader/DonateActivity$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/DonateActivity$1;-><init>(Lcom/novel/reader/DonateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/novel/reader/DonateActivity;->validate_btn:Landroid/widget/Button;

    new-instance v1, Lcom/novel/reader/DonateActivity$2;

    invoke-direct {v1, p0}, Lcom/novel/reader/DonateActivity$2;-><init>(Lcom/novel/reader/DonateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method private trackScreen()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/novel/reader/DonateActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 42
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "Donate Activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/novel/reader/DonateActivity;->iap:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v0, v0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/novel/reader/DonateActivity;->iap:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v0, v0, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vending/billing/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/novel/reader/NovelReaderBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/novel/reader/NovelReaderBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f030048

    invoke-virtual {p0, v1}, Lcom/novel/reader/DonateActivity;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/novel/reader/DonateActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 30
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    const-string/jumbo v1, "\u8d0a\u52a9\u5c0f\u8aaa\u738b"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    invoke-direct {p0}, Lcom/novel/reader/DonateActivity;->findViews()V

    .line 34
    invoke-direct {p0}, Lcom/novel/reader/DonateActivity;->setListener()V

    .line 35
    new-instance v1, Lcom/android/vending/billing/InAppBillingForNovel;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/InAppBillingForNovel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/novel/reader/DonateActivity;->iap:Lcom/android/vending/billing/InAppBillingForNovel;

    .line 37
    invoke-direct {p0}, Lcom/novel/reader/DonateActivity;->trackScreen()V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/novel/reader/NovelReaderBaseActivity;->onDestroy()V

    .line 80
    iget-object v1, p0, Lcom/novel/reader/DonateActivity;->iap:Lcom/android/vending/billing/InAppBillingForNovel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/novel/reader/DonateActivity;->iap:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-eqz v1, :cond_0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/novel/reader/DonateActivity;->iap:Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v1, v1, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v1}, Lcom/android/vending/billing/util/IabHelper;->dispose()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/novel/reader/DonateActivity;->iap:Lcom/android/vending/billing/InAppBillingForNovel;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/vending/billing/InAppBillingForNovel;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 90
    :cond_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 105
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/DonateActivity;->finish()V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
