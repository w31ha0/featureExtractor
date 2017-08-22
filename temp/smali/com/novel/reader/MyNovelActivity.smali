.class public Lcom/novel/reader/MyNovelActivity;
.super Lcom/ads/MopubAdFragmentActivity;
.source "MyNovelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/MyNovelActivity$NovelPagerAdapter;
    }
.end annotation


# static fields
.field private static final ID_ABOUT_US:I = 0x2

.field private static final ID_GRADE:I = 0x3

.field private static final ID_RESPONSE:I = 0x1

.field private static final ID_Report:I = 0x6

.field private static final ID_SETTING:I


# instance fields
.field private CONTENT:[Ljava/lang/String;

.field private aboutUsDialog:Landroid/app/AlertDialog$Builder;

.field private actionbar:Landroid/support/v7/app/ActionBar;

.field private adapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

.field private bannerAdView:Landroid/widget/RelativeLayout;

.field private mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

.field private pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ads/MopubAdFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/MyNovelActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MyNovelActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/novel/reader/MyNovelActivity;->trackFragment(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/novel/reader/MyNovelActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MyNovelActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/novel/reader/MyNovelActivity;->CONTENT:[Ljava/lang/String;

    return-object v0
.end method

.method private setAboutUsDialog()V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/MyNovelActivity$2;

    invoke-direct {v2, p0}, Lcom/novel/reader/MyNovelActivity$2;-><init>(Lcom/novel/reader/MyNovelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MyNovelActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    .line 213
    return-void
.end method

.method private trackFragment(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 109
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    if-nez p1, :cond_1

    .line 110
    const-string v1, "My Collected Novels Bookcase Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 115
    return-void

    .line 111
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 112
    const-string v1, "My Downloaded Novels Bookcase Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackScreen()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/novel/reader/MyNovelActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    new-instance v1, Lcom/novel/reader/MyNovelActivity$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/MyNovelActivity$1;-><init>(Lcom/novel/reader/MyNovelActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/slidingtab/SlidingTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/novel/reader/MyNovelActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/novel/reader/MyNovelActivity;->trackFragment(I)V

    .line 105
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v2, 0x7f03006b

    invoke-virtual {p0, v2}, Lcom/novel/reader/MyNovelActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/MyNovelActivity;->actionbar:Landroid/support/v7/app/ActionBar;

    .line 55
    iget-object v2, p0, Lcom/novel/reader/MyNovelActivity;->actionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, p0, Lcom/novel/reader/MyNovelActivity;->actionbar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/MyNovelActivity;->CONTENT:[Ljava/lang/String;

    .line 61
    new-instance v2, Lcom/novel/reader/MyNovelActivity$NovelPagerAdapter;

    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/novel/reader/MyNovelActivity$NovelPagerAdapter;-><init>(Lcom/novel/reader/MyNovelActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/novel/reader/MyNovelActivity;->adapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    .line 63
    const v2, 0x7f0e009c

    invoke-virtual {p0, v2}, Lcom/novel/reader/MyNovelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/novel/reader/MyNovelActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 64
    iget-object v2, p0, Lcom/novel/reader/MyNovelActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/novel/reader/MyNovelActivity;->adapter:Landroid/support/v4/app/FragmentStatePagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 68
    const-string v2, "noti"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/novel/reader/MyNovelActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 73
    :cond_0
    const v2, 0x7f0e009b

    invoke-virtual {p0, v2}, Lcom/novel/reader/MyNovelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/slidingtab/SlidingTabLayout;

    iput-object v2, p0, Lcom/novel/reader/MyNovelActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    .line 74
    iget-object v2, p0, Lcom/novel/reader/MyNovelActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    iget-object v3, p0, Lcom/novel/reader/MyNovelActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/android/slidingtab/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 77
    invoke-direct {p0}, Lcom/novel/reader/MyNovelActivity;->setAboutUsDialog()V

    .line 79
    const v2, 0x7f0e009d

    invoke-virtual {p0, v2}, Lcom/novel/reader/MyNovelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/novel/reader/MyNovelActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    .line 80
    const-string v2, "YearSubscription"

    invoke-static {v2, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/novel/reader/MyNovelActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/novel/reader/MyNovelActivity;->setBannerAdView(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/MyNovelActivity;->moPubView:Lcom/ads/MopubViewExtend;

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/novel/reader/MyNovelActivity;->trackScreen()V

    .line 84
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 124
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v5, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 125
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 126
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 127
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v6, v6, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 128
    const-string v0, "YearSubscription"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x7

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 132
    :cond_0
    return v5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x1

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 139
    .local v4, "itemId":I
    sparse-switch v4, :sswitch_data_0

    .line 172
    :goto_0
    return v10

    .line 141
    :sswitch_0
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->finish()V

    goto :goto_0

    .line 145
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/novel/reader/SettingActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/novel/reader/MyNovelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "emailIntent":Landroid/content/Intent;
    const-string v5, "plain/text"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v5, "android.intent.extra.EMAIL"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700cc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v5, "android.intent.extra.TEXT"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v5, "Send mail..."

    invoke-static {v1, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/novel/reader/MyNovelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 157
    .end local v1    # "emailIntent":Landroid/content/Intent;
    :sswitch_3
    iget-object v5, p0, Lcom/novel/reader/MyNovelActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 160
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/novel/reader/MyNovelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :sswitch_5
    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/novel/reader/MyNovelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/kosbrother/tool/Report;->createReportDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :sswitch_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v3, "intent1":Landroid/content/Intent;
    const-class v5, Lcom/novel/reader/DonateActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v3}, Lcom/novel/reader/MyNovelActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onResume()V

    .line 219
    const-string v0, "YearSubscription"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/novel/reader/MyNovelActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 221
    :cond_0
    return-void
.end method
