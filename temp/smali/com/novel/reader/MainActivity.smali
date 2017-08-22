.class public Lcom/novel/reader/MainActivity;
.super Lcom/ads/MopubAdFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novel/reader/MainActivity$RestoreTask;,
        Lcom/novel/reader/MainActivity$BackupInfoTask;,
        Lcom/novel/reader/MainActivity$BackupTask;,
        Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;,
        Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;,
        Lcom/novel/reader/MainActivity$UpdateInfo;,
        Lcom/novel/reader/MainActivity$CreateUserTask;,
        Lcom/novel/reader/MainActivity$NovelPagerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final ID_ABOUT_US:I = 0x2

.field private static final ID_GRADE:I = 0x3

.field private static final ID_RESPONSE:I = 0x1

.field private static final ID_Report:I = 0x6

.field private static final ID_SEARCH:I = 0x5

.field private static final ID_SETTING:I = 0x0

.field private static final RC_SIGN_IN:I = 0x2329


# instance fields
.field private CONTENT:[Ljava/lang/String;

.field private aboutUsDialog:Landroid/app/AlertDialog$Builder;

.field private bannerAdView:Landroid/widget/RelativeLayout;

.field private email:Ljava/lang/String;

.field private itemSearch:Landroid/view/MenuItem;

.field private logInEmail:Landroid/widget/TextView;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

.field private mTitle:Ljava/lang/CharSequence;

.field private navigationView:Landroid/support/design/widget/NavigationView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private signInBtn:Lcom/google/android/gms/common/SignInButton;

.field private signOutBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/ads/MopubAdFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/novel/reader/MainActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;
    .param p1, "x1"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/novel/reader/MainActivity;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/novel/reader/MainActivity;ILcom/novel/reader/MainActivity$UpdateInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/novel/reader/MainActivity$UpdateInfo;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/novel/reader/MainActivity;->showUpdateDialog(ILcom/novel/reader/MainActivity$UpdateInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/novel/reader/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->showAlreadyUpdateDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/novel/reader/MainActivity;Ljava/lang/String;Lcom/novel/reader/api/NovelAPI$BackupInfo;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/novel/reader/api/NovelAPI$BackupInfo;
    .param p3, "x3"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "x4"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/novel/reader/MainActivity;->showRestoreDialog(Ljava/lang/String;Lcom/novel/reader/api/NovelAPI$BackupInfo;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/novel/reader/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->showRestoreFinishDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/novel/reader/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->signIn()V

    return-void
.end method

.method static synthetic access$300(Lcom/novel/reader/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->signOut()V

    return-void
.end method

.method static synthetic access$400(Lcom/novel/reader/MainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/novel/reader/MainActivity;->drawNavigationServerPartAndSignInBtn(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/novel/reader/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/novel/reader/MainActivity;->trackFragment(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/novel/reader/MainActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->CONTENT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/novel/reader/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/novel/reader/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->getDeviceVersionCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/novel/reader/MainActivity;Lcom/novel/reader/MainActivity$UpdateInfo;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/MainActivity;
    .param p1, "x1"    # Lcom/novel/reader/MainActivity$UpdateInfo;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/novel/reader/MainActivity;->isNeedUpdate(Lcom/novel/reader/MainActivity$UpdateInfo;I)Z

    move-result v0

    return v0
.end method

.method private drawNavigationServerPartAndSignInBtn(Z)V
    .locals 5
    .param p1, "signedIn"    # Z

    .prologue
    const v4, 0x7f0e015f

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->logInEmail:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/novel/reader/MainActivity;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->signInBtn:Lcom/google/android/gms/common/SignInButton;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/SignInButton;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->signOutBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->logInEmail:Landroid/widget/TextView;

    const v1, 0x7f0700a0

    invoke-virtual {p0, v1}, Lcom/novel/reader/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->signInBtn:Lcom/google/android/gms/common/SignInButton;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/SignInButton;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->signOutBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method private getDeviceVersionCode()I
    .locals 5

    .prologue
    .line 731
    const/4 v1, 0x0

    .line 733
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 737
    :goto_0
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    return v2

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .prologue
    const/4 v5, 0x0

    .line 998
    const-string v2, "NOVEL_API"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSignInResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1001
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 1002
    .local v0, "acct":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/MainActivity;->email:Ljava/lang/String;

    .line 1003
    const-string v2, "email"

    invoke-static {v2, p0}, Lcom/novel/reader/util/Setting;->getSettingString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, "saveEmail":Ljava/lang/String;
    const-string v2, "NOVEL_API"

    const-string v3, "CreateUserTask:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v2, Lcom/novel/reader/MainActivity$CreateUserTask;

    invoke-direct {v2, p0}, Lcom/novel/reader/MainActivity$CreateUserTask;-><init>(Lcom/novel/reader/MainActivity;)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/novel/reader/MainActivity$CreateUserTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1015
    .end local v0    # "acct":Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .end local v1    # "saveEmail":Ljava/lang/String;
    :goto_0
    return-void

    .line 1013
    :cond_0
    invoke-direct {p0, v5}, Lcom/novel/reader/MainActivity;->drawNavigationServerPartAndSignInBtn(Z)V

    goto :goto_0
.end method

.method private hideProgressDialog()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novel/reader/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 187
    :cond_0
    return-void
.end method

.method private isNeedUpdate(Lcom/novel/reader/MainActivity$UpdateInfo;I)Z
    .locals 1
    .param p1, "info"    # Lcom/novel/reader/MainActivity$UpdateInfo;
    .param p2, "device_version"    # I

    .prologue
    .line 724
    iget v0, p1, Lcom/novel/reader/MainActivity$UpdateInfo;->newest_version:I

    if-le v0, p2, :cond_0

    .line 725
    const/4 v0, 0x1

    .line 727
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectItem(I)V
    .locals 10
    .param p1, "menuId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 531
    packed-switch p1, :pswitch_data_0

    .line 590
    :goto_0
    :pswitch_0
    return-void

    .line 533
    :pswitch_1
    new-instance v7, Lcom/novel/reader/MainActivity$BackupInfoTask;

    const/4 v8, 0x2

    invoke-direct {v7, p0, v8}, Lcom/novel/reader/MainActivity$BackupInfoTask;-><init>(Lcom/novel/reader/MainActivity;I)V

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/novel/reader/MainActivity$BackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 536
    :pswitch_2
    new-instance v7, Lcom/novel/reader/MainActivity$BackupInfoTask;

    invoke-direct {v7, p0, v8}, Lcom/novel/reader/MainActivity$BackupInfoTask;-><init>(Lcom/novel/reader/MainActivity;I)V

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/novel/reader/MainActivity$BackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 539
    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/novel/reader/SettingActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 543
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 544
    .local v0, "bookmarkIntent":Landroid/content/Intent;
    const-string v7, "IS_RECNET"

    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    const-class v7, Lcom/novel/reader/BookmarkActivity;

    invoke-virtual {v0, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0, v0}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 549
    .end local v0    # "bookmarkIntent":Landroid/content/Intent;
    :pswitch_5
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 550
    .local v6, "recent_intent":Landroid/content/Intent;
    const-string v7, "IS_RECNET"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    const-class v7, Lcom/novel/reader/BookmarkActivity;

    invoke-virtual {v6, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 552
    invoke-virtual {p0, v6}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 555
    .end local v6    # "recent_intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/novel/reader/MyNovelActivity;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    .local v2, "collectIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 559
    .end local v2    # "collectIntent":Landroid/content/Intent;
    :pswitch_7
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/novel/reader/MyNovelActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    .local v3, "downloadIntent":Landroid/content/Intent;
    const-string v7, "noti"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, v3}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 564
    .end local v3    # "downloadIntent":Landroid/content/Intent;
    :pswitch_8
    iget-object v7, p0, Lcom/novel/reader/MainActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 567
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700b2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 568
    .local v1, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 571
    .end local v1    # "browserIntent":Landroid/content/Intent;
    :pswitch_a
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700c0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700bf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcom/kosbrother/tool/Report;->createReportDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 574
    :pswitch_b
    invoke-static {p0}, Lcom/kosbrother/tool/RecommendNovelDialog;->createReportDialog(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 577
    :pswitch_c
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v5, "intent1":Landroid/content/Intent;
    const-class v7, Lcom/novel/reader/DonateActivity;

    invoke-virtual {v5, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p0, v5}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 582
    .end local v5    # "intent1":Landroid/content/Intent;
    :pswitch_d
    new-instance v7, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;

    invoke-direct {v7, p0}, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;-><init>(Lcom/novel/reader/MainActivity;)V

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/novel/reader/MainActivity$CheckUpdateInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 585
    :pswitch_e
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    const-string v8, "https://novelking.cc"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 586
    .restart local v1    # "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e015a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private setAboutUsDialog()V
    .locals 3

    .prologue
    .line 520
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 522
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/MainActivity$10;

    invoke-direct {v2, p0}, Lcom/novel/reader/MainActivity$10;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/MainActivity;->aboutUsDialog:Landroid/app/AlertDialog$Builder;

    .line 528
    return-void
.end method

.method private setCheckCollectNovelsAlarm()V
    .locals 0

    .prologue
    .line 281
    invoke-static {p0}, Lcom/novel/reader/util/NovelReaderUtil;->dailyCollectNovelsAlarmSetup(Landroid/content/Context;)V

    .line 282
    return-void
.end method

.method private setNavigationDrawler()V
    .locals 6

    .prologue
    .line 286
    const v1, 0x7f0e00ee

    invoke-virtual {p0, v1}, Lcom/novel/reader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 287
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v3}, Lcom/novel/reader/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 288
    const v1, 0x7f0200a4

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/Toolbar;->setLogo(I)V

    .line 290
    const v1, 0x7f0e00ec

    invoke-virtual {p0, v1}, Lcom/novel/reader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 291
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v4, 0x7f070099

    const v5, 0x7f070098

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 293
    .local v0, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 294
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 297
    const v1, 0x7f0e00ef

    invoke-virtual {p0, v1}, Lcom/novel/reader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/NavigationView;

    iput-object v1, p0, Lcom/novel/reader/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    .line 298
    iget-object v1, p0, Lcom/novel/reader/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 299
    return-void
.end method

.method private setSignInSignOut()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/novel/reader/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "headLayout":Landroid/view/View;
    const v1, 0x7f0e0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/novel/reader/MainActivity;->logInEmail:Landroid/widget/TextView;

    .line 192
    const v1, 0x7f0e0136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/SignInButton;

    iput-object v1, p0, Lcom/novel/reader/MainActivity;->signInBtn:Lcom/google/android/gms/common/SignInButton;

    .line 193
    const v1, 0x7f0e0137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/novel/reader/MainActivity;->signOutBtn:Landroid/widget/Button;

    .line 195
    iget-object v1, p0, Lcom/novel/reader/MainActivity;->signInBtn:Lcom/google/android/gms/common/SignInButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/SignInButton;->setSize(I)V

    .line 197
    iget-object v1, p0, Lcom/novel/reader/MainActivity;->signInBtn:Lcom/google/android/gms/common/SignInButton;

    new-instance v2, Lcom/novel/reader/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/novel/reader/MainActivity$2;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/SignInButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/novel/reader/MainActivity;->signOutBtn:Landroid/widget/Button;

    new-instance v2, Lcom/novel/reader/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/novel/reader/MainActivity$3;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method private setTextLocale()V
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    .line 343
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 344
    .local v1, "current":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "country":Ljava/lang/String;
    const-string v4, "pref"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/novel/reader/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 346
    .local v2, "sharePreference":Landroid/content/SharedPreferences;
    const-string v4, "TextLanguage"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 347
    .local v3, "text_setting_value":I
    if-ne v3, v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    const-string v4, "TextLanguage"

    const/4 v5, 0x1

    invoke-static {v4, v5, p0}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    .line 349
    :cond_0
    return-void
.end method

.method private setViewPagerAndSlidingTab()V
    .locals 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 303
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/novel/reader/MainActivity;->CONTENT:[Ljava/lang/String;

    .line 304
    new-instance v0, Lcom/novel/reader/MainActivity$NovelPagerAdapter;

    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/novel/reader/MainActivity$NovelPagerAdapter;-><init>(Lcom/novel/reader/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 306
    .local v0, "adapter":Landroid/support/v4/app/FragmentPagerAdapter;
    const v2, 0x7f0e009c

    invoke-virtual {p0, v2}, Lcom/novel/reader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/novel/reader/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 307
    iget-object v2, p0, Lcom/novel/reader/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 309
    const v2, 0x7f0e009b

    invoke-virtual {p0, v2}, Lcom/novel/reader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/slidingtab/SlidingTabLayout;

    iput-object v2, p0, Lcom/novel/reader/MainActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    .line 310
    iget-object v2, p0, Lcom/novel/reader/MainActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    iget-object v3, p0, Lcom/novel/reader/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/android/slidingtab/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 312
    iget-object v2, p0, Lcom/novel/reader/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 313
    return-void
.end method

.method private showAlreadyUpdateDialog()V
    .locals 5

    .prologue
    .line 755
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 756
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 757
    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070103

    invoke-virtual {p0, v3}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/novel/reader/MainActivity$12;

    invoke-direct {v4, p0}, Lcom/novel/reader/MainActivity$12;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 762
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 763
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 764
    return-void
.end method

.method private showProgressDialog()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/novel/reader/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 176
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0700ae

    invoke-virtual {p0, v1}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 181
    return-void
.end method

.method private showRestoreDialog(Ljava/lang/String;Lcom/novel/reader/api/NovelAPI$BackupInfo;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/novel/reader/api/NovelAPI$BackupInfo;
    .param p3, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "setNegative"    # Z

    .prologue
    .line 767
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 768
    .local v2, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 769
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f03001c

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 770
    .local v3, "dialogView":Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 772
    const v10, 0x7f0e0090

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 773
    .local v6, "emailText":Landroid/widget/TextView;
    const v10, 0x7f0e0096

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 774
    .local v1, "collectNovelsText":Landroid/widget/TextView;
    const v10, 0x7f0e0094

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 775
    .local v4, "downloadNovelsText":Landroid/widget/TextView;
    const v10, 0x7f0e0092

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 777
    .local v9, "updateText":Landroid/widget/TextView;
    const-string v10, "TextLanguage"

    invoke-static {v10, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v8

    .line 778
    .local v8, "textLanguage":I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 780
    :try_start_0
    invoke-static {}, Ltaobe/tec/jcc/JChineseConvertor;->getInstance()Ltaobe/tec/jcc/JChineseConvertor;

    move-result-object v10

    iget-object v11, p2, Lcom/novel/reader/api/NovelAPI$BackupInfo;->collects:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ltaobe/tec/jcc/JChineseConvertor;->t2s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p2, Lcom/novel/reader/api/NovelAPI$BackupInfo;->collects:Ljava/lang/String;

    .line 781
    invoke-static {}, Ltaobe/tec/jcc/JChineseConvertor;->getInstance()Ltaobe/tec/jcc/JChineseConvertor;

    move-result-object v10

    iget-object v11, p2, Lcom/novel/reader/api/NovelAPI$BackupInfo;->downloads:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ltaobe/tec/jcc/JChineseConvertor;->t2s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p2, Lcom/novel/reader/api/NovelAPI$BackupInfo;->downloads:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :cond_0
    :goto_0
    iget-object v10, p2, Lcom/novel/reader/api/NovelAPI$BackupInfo;->email:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v10, p2, Lcom/novel/reader/api/NovelAPI$BackupInfo;->collects:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v10, p2, Lcom/novel/reader/api/NovelAPI$BackupInfo;->downloads:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v10, p2, Lcom/novel/reader/api/NovelAPI$BackupInfo;->updated:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 792
    const v10, 0x7f070103

    invoke-virtual {p0, v10}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 794
    if-eqz p4, :cond_1

    .line 795
    const v10, 0x7f0700b9

    invoke-virtual {p0, v10}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/novel/reader/MainActivity$13;

    invoke-direct {v11, p0}, Lcom/novel/reader/MainActivity$13;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v2, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 801
    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 802
    .local v0, "b":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 803
    return-void

    .line 782
    .end local v0    # "b":Landroid/app/AlertDialog;
    :catch_0
    move-exception v5

    .line 783
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private showRestoreFinishDialog()V
    .locals 5

    .prologue
    .line 806
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 807
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0700d0

    invoke-virtual {p0, v2}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070103

    invoke-virtual {p0, v3}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/novel/reader/MainActivity$14;

    invoke-direct {v4, p0}, Lcom/novel/reader/MainActivity$14;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 812
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 813
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 814
    return-void
.end method

.method private showUpdateDialog(ILcom/novel/reader/MainActivity$UpdateInfo;)V
    .locals 6
    .param p1, "device_version"    # I
    .param p2, "info"    # Lcom/novel/reader/MainActivity$UpdateInfo;

    .prologue
    .line 741
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 742
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 743
    const v2, 0x7f07009a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p2, Lcom/novel/reader/MainActivity$UpdateInfo;->newest_version:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/novel/reader/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07005e

    invoke-virtual {p0, v3}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/novel/reader/MainActivity$11;

    invoke-direct {v4, p0, p2}, Lcom/novel/reader/MainActivity$11;-><init>(Lcom/novel/reader/MainActivity;Lcom/novel/reader/MainActivity$UpdateInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 751
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 752
    return-void
.end method

.method private showUpdateInfoDialog(Landroid/app/Activity;)V
    .locals 7
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 325
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030032

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 326
    .local v2, "recomendLayout":Landroid/widget/LinearLayout;
    const v4, 0x7f0e00b4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 327
    .local v3, "update_text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f02005a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 330
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/novel/reader/MainActivity$6;

    invoke-direct {v6, p0}, Lcom/novel/reader/MainActivity$6;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 337
    .local v0, "a":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 339
    return-void
.end method

.method private signIn()V
    .locals 3

    .prologue
    .line 223
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v2, p0, Lcom/novel/reader/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    .line 224
    .local v0, "signInIntent":Landroid/content/Intent;
    const/16 v1, 0x2329

    invoke-virtual {p0, v0, v1}, Lcom/novel/reader/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    return-void
.end method

.method private signOut()V
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/novel/reader/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/novel/reader/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/novel/reader/MainActivity$4;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 220
    return-void
.end method

.method private trackFragment(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 261
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 262
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    if-nez p1, :cond_1

    .line 263
    const-string v1, "Index Category List Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 278
    return-void

    .line 264
    :cond_1
    if-ne p1, v3, :cond_2

    .line 265
    const-string v1, "Index Recommend Grid Fragment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_2
    if-ne p1, v4, :cond_3

    .line 267
    sget-object v1, Lcom/analytics/AnalyticsName;->IndexFragmentMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_3
    if-ne p1, v5, :cond_4

    .line 269
    sget-object v1, Lcom/analytics/AnalyticsName;->IndexFragmentMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_4
    if-ne p1, v6, :cond_5

    .line 271
    sget-object v1, Lcom/analytics/AnalyticsName;->IndexFragmentMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_5
    if-ne p1, v7, :cond_6

    .line 273
    sget-object v1, Lcom/analytics/AnalyticsName;->IndexFragmentMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 275
    sget-object v1, Lcom/analytics/AnalyticsName;->IndexFragmentMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trackScreen()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->mSlidingTabLayout:Lcom/android/slidingtab/SlidingTabLayout;

    new-instance v1, Lcom/novel/reader/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/novel/reader/MainActivity$5;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/slidingtab/SlidingTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/novel/reader/MainActivity;->trackFragment(I)V

    .line 258
    return-void
.end method


# virtual methods
.method checkDB()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 352
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "kosnovel"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 354
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 355
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "kosnovel.sqlite"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v3, "sdcardDB":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 358
    const-string v4, "Load"

    const-string v5, "Loading\u2026"

    invoke-static {p0, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 359
    .local v2, "progressdialogInit":Landroid/app/ProgressDialog;
    const-string/jumbo v4, "\u521d\u59cb\u5316DB"

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    const-string/jumbo v4, "\u521d\u59cb\u5316DB\u4e2d\u2026(\u539f\u5148\u4e0b\u8f09\u904e\u5c0f\u8aaa\u7684\u7528\u6236\uff0c\u6703\u5c07\u8cc7\u6599\u8f49\u81f3 SD\u5361\uff09"

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 362
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 363
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 364
    new-instance v1, Lcom/novel/db/SQLiteNovel;

    invoke-direct {v1, p0}, Lcom/novel/db/SQLiteNovel;-><init>(Landroid/content/Context;)V

    .line 365
    .local v1, "db":Lcom/novel/db/SQLiteNovel;
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 367
    .end local v1    # "db":Lcom/novel/db/SQLiteNovel;
    .end local v2    # "progressdialogInit":Landroid/app/ProgressDialog;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 988
    invoke-super {p0, p1, p2, p3}, Lcom/ads/MopubAdFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 991
    const/16 v1, 0x2329

    if-ne p1, v1, :cond_0

    .line 992
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v0

    .line 993
    .local v0, "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    invoke-direct {p0, v0}, Lcom/novel/reader/MainActivity;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    .line 995
    .end local v0    # "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const v3, 0x800003

    const/4 v2, 0x1

    .line 506
    const v1, 0x7f0e00ec

    invoke-virtual {p0, v1}, Lcom/novel/reader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 507
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 516
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/novel/reader/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->finish()V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/novel/reader/MainActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 462
    const-string v0, "NOVEL_API"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionFailed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/novel/reader/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 464
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    new-instance v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v3, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 116
    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 119
    .local v0, "gso":Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    new-instance v3, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    invoke-virtual {v3, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 121
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    iput-object v3, p0, Lcom/novel/reader/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 124
    const v3, 0x7f03004b

    invoke-virtual {p0, v3}, Lcom/novel/reader/MainActivity;->setContentView(I)V

    .line 125
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->setTextLocale()V

    .line 126
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->setViewPagerAndSlidingTab()V

    .line 127
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->setAboutUsDialog()V

    .line 128
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->setNavigationDrawler()V

    .line 129
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->setSignInSignOut()V

    .line 131
    const-string v3, "UpdateAppVersion"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/novel/reader/util/Setting;->getAppVersion(Landroid/content/Context;)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 132
    invoke-direct {p0, p0}, Lcom/novel/reader/MainActivity;->showUpdateInfoDialog(Landroid/app/Activity;)V

    .line 133
    const-string v3, "UpdateAppVersion"

    invoke-static {p0}, Lcom/novel/reader/util/Setting;->getAppVersion(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4, p0}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->checkDB()V

    .line 138
    const v3, 0x7f0e009d

    invoke-virtual {p0, v3}, Lcom/novel/reader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/novel/reader/MainActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    .line 139
    const-string v3, "YearSubscription"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/novel/reader/MainActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/novel/reader/MainActivity;->setBannerAdView(Landroid/widget/RelativeLayout;)Lcom/ads/MopubViewExtend;

    move-result-object v3

    iput-object v3, p0, Lcom/novel/reader/MainActivity;->moPubView:Lcom/ads/MopubViewExtend;

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->setCheckCollectNovelsAlarm()V

    .line 144
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->trackScreen()V

    .line 146
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 147
    .local v2, "r":Ljava/util/Random;
    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 148
    .local v1, "i1":I
    const/16 v3, 0xf

    if-ne v1, v3, :cond_2

    .line 149
    new-instance v3, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;

    invoke-direct {v3, p0}, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;-><init>(Lcom/novel/reader/MainActivity;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/novel/reader/MainActivity$AppOpenCheckUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f0e0159

    .line 372
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 373
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v4, 0x7f0f0005

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 374
    const-string v4, "search"

    invoke-virtual {p0, v4}, Lcom/novel/reader/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 375
    .local v1, "searchManager":Landroid/app/SearchManager;
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SearchView;

    .line 376
    .local v3, "searchView":Landroid/support/v7/widget/SearchView;
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 377
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 379
    .local v2, "searchMenuItem":Landroid/view/MenuItem;
    new-instance v4, Lcom/novel/reader/MainActivity$7;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/novel/reader/MainActivity$7;-><init>(Lcom/novel/reader/MainActivity;Landroid/view/Menu;Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 393
    new-instance v4, Lcom/novel/reader/MainActivity$8;

    invoke-direct {v4, p0, v3, v2}, Lcom/novel/reader/MainActivity$8;-><init>(Lcom/novel/reader/MainActivity;Landroid/support/v7/widget/SearchView;Landroid/view/MenuItem;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V

    .line 417
    new-instance v4, Lcom/novel/reader/MainActivity$9;

    invoke-direct {v4, p0, p1}, Lcom/novel/reader/MainActivity$9;-><init>(Lcom/novel/reader/MainActivity;Landroid/view/Menu;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 442
    const/4 v4, 0x1

    return v4
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 453
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 454
    .local v1, "id":I
    invoke-direct {p0, v1}, Lcom/novel/reader/MainActivity;->selectItem(I)V

    .line 455
    const v2, 0x7f0e00ec

    invoke-virtual {p0, v2}, Lcom/novel/reader/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 456
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 457
    const/4 v2, 0x1

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/ads/MopubAdFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onResume()V

    .line 319
    const-string v0, "YearSubscription"

    invoke-static {v0, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/novel/reader/MainActivity;->bannerAdView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Lcom/ads/MopubAdFragmentActivity;->onStart()V

    .line 156
    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v3, p0, Lcom/novel/reader/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->silentSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object v0

    .line 157
    .local v0, "opr":Lcom/google/android/gms/common/api/OptionalPendingResult;, "Lcom/google/android/gms/common/api/OptionalPendingResult<Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;>;"
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/OptionalPendingResult;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const-string v2, "NOVEL_API"

    const-string v3, "Got cached sign-in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/OptionalPendingResult;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .line 160
    .local v1, "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    invoke-direct {p0, v1}, Lcom/novel/reader/MainActivity;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    .line 171
    .end local v1    # "result":Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/novel/reader/MainActivity;->showProgressDialog()V

    .line 163
    new-instance v2, Lcom/novel/reader/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/novel/reader/MainActivity$1;-><init>(Lcom/novel/reader/MainActivity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/OptionalPendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/novel/reader/MainActivity;->mTitle:Ljava/lang/CharSequence;

    .line 595
    invoke-virtual {p0}, Lcom/novel/reader/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/MainActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 596
    return-void
.end method
