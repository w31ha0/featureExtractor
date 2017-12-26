.class public Lcom/wordloco/wordchallenge/view/Home;
.super Lcom/google/example/games/basegameutils/BaseGameActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field a:Landroid/media/MediaPlayer;

.field private b:I

.field private c:Lcom/google/android/gms/plus/PlusOneButton;

.field private d:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private e:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Home;->b:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->a:Landroid/media/MediaPlayer;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/Home;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/wordloco/wordchallenge/view/Home;->b:I

    return-void
.end method

.method static synthetic b(Lcom/wordloco/wordchallenge/view/Home;)Lcom/facebook/UiLifecycleHelper;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    return-object v0
.end method

.method static synthetic c(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const v6, 0x7f0600ab

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 908
    const-string v0, "EUConsent"

    invoke-virtual {p0, v0, v5}, Lcom/wordloco/wordchallenge/view/Home;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 910
    const-string v0, "isFirstRun"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/wordloco/wordchallenge/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 912
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 911
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    const v0, 0x7f060094

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    const v0, 0x7f06009c

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    const v0, 0x7f060096

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    const v0, 0x7f06009f

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 918
    const v0, 0x7f060097

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    const v0, 0x7f06009e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    const v0, 0x7f0600a0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    const v0, 0x7f06009d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 922
    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    const v0, 0x7f0600a2

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 925
    const v0, 0x7f0600a3

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    const v0, 0x7f0600a6

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 928
    const v0, 0x7f0600a7

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    const v0, 0x7f0600aa

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isFirstRun"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 935
    :goto_0
    return-void

    .line 933
    :cond_0
    const v0, 0x7f0600a9

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 897
    if-eqz p1, :cond_1

    .line 898
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 902
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 904
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 79
    iput-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 80
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wordloco/wordchallenge/view/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const v1, 0x7f040002

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/wordloco/wordchallenge/view/Home;->overridePendingTransition(II)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->startActivity(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->finish()V

    .line 85
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 829
    invoke-super {p0, p1, p2, p3}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 830
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    .line 831
    new-instance v1, Lcom/wordloco/wordchallenge/view/aj;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/aj;-><init>(Lcom/wordloco/wordchallenge/view/Home;)V

    .line 830
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 843
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 655
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Home;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wordloco/wordchallenge/view/Home;->b:I

    .line 656
    iget v0, p0, Lcom/wordloco/wordchallenge/view/Home;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900a3

    .line 658
    const/4 v2, 0x0

    .line 657
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f06008a

    const v7, 0x7f060086

    const v6, 0x7f060085

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    .line 665
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 667
    const/4 v1, 0x0

    .line 668
    const/4 v0, 0x0

    .line 669
    const v3, 0x7f060093

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 670
    const-string v1, "en"

    .line 671
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900ab

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 673
    :cond_0
    const v3, 0x7f060094

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 674
    const-string v1, "es"

    .line 675
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900aa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    :cond_1
    const v3, 0x7f06009c

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 678
    const-string v1, "it"

    .line 679
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900ac

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    :cond_2
    const v3, 0x7f060096

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 682
    const-string v1, "ru"

    .line 683
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_3
    const v3, 0x7f06009f

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 686
    const-string v1, "pl"

    .line 687
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    :cond_4
    const v3, 0x7f06009e

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 690
    const-string v1, "sv"

    .line 691
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900af

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 693
    :cond_5
    const v3, 0x7f0600a0

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_6

    .line 694
    const-string v1, "cs"

    .line 695
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_6
    const v3, 0x7f060097

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_7

    .line 698
    const-string v1, "de"

    .line 699
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900ae

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    :cond_7
    const v3, 0x7f06009d

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_8

    .line 702
    const-string v1, "nl"

    .line 703
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    :cond_8
    const v3, 0x7f06009b

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_9

    .line 706
    const-string v1, "pt"

    .line 707
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 709
    :cond_9
    const v3, 0x7f060095

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_a

    .line 710
    const-string v1, "fr"

    .line 711
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    :cond_a
    const v3, 0x7f0600a2

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_b

    .line 714
    const-string v1, "uk"

    .line 715
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 717
    :cond_b
    const v3, 0x7f0600a3

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_c

    .line 718
    const-string v1, "tr"

    .line 719
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 721
    :cond_c
    const v3, 0x7f0600a1

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_d

    .line 722
    const-string v1, "sk"

    .line 723
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 726
    :cond_d
    const v3, 0x7f060099

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_e

    .line 727
    const-string v1, "ko"

    .line 728
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 730
    :cond_e
    const v3, 0x7f06009a

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_f

    .line 731
    const-string v1, "zh"

    .line 732
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900ba

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_f
    const v3, 0x7f060098

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_10

    .line 735
    const-string v1, "ja"

    .line 736
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900b8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    :cond_10
    const v3, 0x7f0600a4

    invoke-virtual {p0, v3}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_11

    .line 739
    const-string v1, "hi"

    .line 740
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900bb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    :cond_11
    if-eqz v1, :cond_12

    .line 743
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->d()V

    .line 744
    invoke-static {v1}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 746
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 747
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 748
    invoke-virtual {p0, v1}, Lcom/wordloco/wordchallenge/view/Home;->a(Ljava/lang/String;)V

    .line 750
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v6, :cond_13

    .line 751
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v8, :cond_14

    .line 752
    :cond_13
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->beginUserInitiatedSignIn()V

    .line 754
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v7, :cond_15

    .line 755
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->signOut()V

    .line 756
    invoke-virtual {p0, v6}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 758
    invoke-virtual {p0, v7}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 760
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06008b

    if-ne v0, v1, :cond_16

    .line 761
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->signOut()V

    .line 762
    invoke-virtual {p0, v8}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 764
    const v0, 0x7f06008b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 765
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 768
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060083

    if-eq v0, v1, :cond_17

    .line 769
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06008c

    if-ne v0, v1, :cond_18

    .line 770
    :cond_17
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 772
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    .line 773
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    .line 774
    const/4 v1, 0x1

    .line 771
    invoke-virtual {p0, v0, v1}, Lcom/wordloco/wordchallenge/view/Home;->startActivityForResult(Landroid/content/Intent;I)V

    .line 779
    :cond_18
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060087

    if-eq v0, v1, :cond_19

    .line 780
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06008d

    if-ne v0, v1, :cond_1a

    .line 781
    :cond_19
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 782
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    .line 783
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const v2, 0x7f090053

    invoke-virtual {p0, v2}, Lcom/wordloco/wordchallenge/view/Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 782
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 783
    const/4 v1, 0x2

    .line 782
    invoke-virtual {p0, v0, v1}, Lcom/wordloco/wordchallenge/view/Home;->startActivityForResult(Landroid/content/Intent;I)V

    .line 789
    :cond_1a
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600ab

    if-ne v0, v1, :cond_1b

    .line 790
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 791
    const-string v2, "http://www.theangrykraken.com/terms.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 790
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->startActivity(Landroid/content/Intent;)V

    .line 793
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600aa

    if-ne v0, v1, :cond_1c

    .line 794
    const v0, 0x7f0600a9

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 795
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    const v0, 0x7f060094

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    const v0, 0x7f06009c

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    const v0, 0x7f060096

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    const v0, 0x7f06009f

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    const v0, 0x7f060097

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    const v0, 0x7f06009e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    const v0, 0x7f0600a0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    const v0, 0x7f06009d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    const v0, 0x7f0600a2

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    const v0, 0x7f0600a3

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    const v0, 0x7f0600a6

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    const v0, 0x7f0600a7

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    :cond_1c
    return-void

    .line 776
    :cond_1d
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->beginUserInitiatedSignIn()V

    goto/16 :goto_0

    .line 785
    :cond_1e
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->beginUserInitiatedSignIn()V

    goto/16 :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 847
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .prologue
    .line 851
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 855
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f06007b

    const v7, 0x7f060078

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 90
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_0
    invoke-static {}, Lb/a/a/a/f;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Lb/a/a/a/p;

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lb/a/a/a/f;->a(Landroid/content/Context;[Lb/a/a/a/p;)Lb/a/a/a/f;

    .line 97
    :cond_0
    sget-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    sput-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    .line 101
    :cond_1
    sget-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    sput-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    .line 106
    :cond_2
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 107
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "en"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    if-eqz v0, :cond_14

    .line 109
    const-string v0, "en"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    .line 288
    :goto_1
    invoke-super {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    .line 290
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 291
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lcom/wordloco/wordchallenge/view/Home;->overridePendingTransition(II)V

    .line 292
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->setContentView(I)V

    .line 294
    invoke-static {p0}, Lcom/wordloco/wordchallenge/d/f;->a(Landroid/app/Activity;)V

    .line 296
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->m()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 297
    invoke-virtual {p0, v8}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 298
    invoke-virtual {p0, v8}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    new-instance v1, Lcom/wordloco/wordchallenge/view/ab;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ab;-><init>(Lcom/wordloco/wordchallenge/view/Home;)V

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    :goto_2
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 356
    const-string v1, "fonts/HKGrotesk-Bold.otf"

    .line 355
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 358
    const v0, 0x7f060080

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 359
    const v0, 0x7f06007d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 361
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    const v0, 0x7f060094

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    const v0, 0x7f06009c

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    const v0, 0x7f060096

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    const v0, 0x7f06009f

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    const v0, 0x7f060097

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v0, 0x7f06009e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v0, 0x7f0600a0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v0, 0x7f06009d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    const v0, 0x7f0600a2

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    const v0, 0x7f0600a3

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    const v0, 0x7f06009a

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    const v0, 0x7f060099

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    const v0, 0x7f0600a4

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "es"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 381
    const v0, 0x7f060094

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_3
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "it"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 383
    const v0, 0x7f06009c

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_4
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ru"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 385
    const v0, 0x7f060096

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :cond_5
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "pl"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 387
    const v0, 0x7f06009f

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_6
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "de"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 389
    const v0, 0x7f060097

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 390
    :cond_7
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "sv"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 391
    const v0, 0x7f06009e

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_8
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "cs"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 393
    const v0, 0x7f0600a0

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_9
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "nl"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 395
    const v0, 0x7f06009d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 396
    :cond_a
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "pt"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 397
    const v0, 0x7f06009b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 398
    :cond_b
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "fr"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 399
    const v0, 0x7f060095

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_c
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "uk"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 401
    const v0, 0x7f0600a2

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :cond_d
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "tr"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 403
    const v0, 0x7f0600a3

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_e
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "sk"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 405
    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    :cond_f
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ja"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 407
    const v0, 0x7f060098

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :cond_10
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "zh"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 409
    const v0, 0x7f06009a

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_11
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ko"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 411
    const v0, 0x7f060099

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :cond_12
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "hi"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 413
    const v0, 0x7f0600a4

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :cond_13
    const v0, 0x7f060087

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v0, 0x7f060083

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const v0, 0x7f06008d

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const v0, 0x7f06008c

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    const v0, 0x7f060085

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v0, 0x7f060086

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    const v0, 0x7f06008b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    const v0, 0x7f06007f

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 425
    new-instance v1, Lcom/wordloco/wordchallenge/view/ac;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ac;-><init>(Lcom/wordloco/wordchallenge/view/Home;)V

    .line 424
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    const v0, 0x7f0600a7

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 466
    new-instance v1, Lcom/wordloco/wordchallenge/view/ae;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ae;-><init>(Lcom/wordloco/wordchallenge/view/Home;)V

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    const v0, 0x7f0600a6

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 494
    new-instance v1, Lcom/wordloco/wordchallenge/view/af;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/af;-><init>(Lcom/wordloco/wordchallenge/view/Home;)V

    .line 493
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    const v0, 0x7f060076

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 526
    new-instance v1, Lcom/wordloco/wordchallenge/view/ag;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ag;-><init>(Lcom/wordloco/wordchallenge/view/Home;)V

    .line 525
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 534
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 536
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 537
    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 534
    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 538
    new-instance v0, Lcom/google/android/gms/plus/PlusOneButton;

    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/PlusOneButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->c:Lcom/google/android/gms/plus/PlusOneButton;

    .line 539
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    .line 540
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 542
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 543
    const/4 v1, -0x2

    .line 544
    const/4 v2, -0x2

    .line 542
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 545
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 546
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 547
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 548
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Home;->c:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/PlusOneButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->c:Lcom/google/android/gms/plus/PlusOneButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusOneButton;->setSize(I)V

    .line 550
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->c:Lcom/google/android/gms/plus/PlusOneButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusOneButton;->setAnnotation(I)V

    .line 551
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->c:Lcom/google/android/gms/plus/PlusOneButton;

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusOneButton;->setId(I)V

    .line 552
    const v0, 0x7f060077

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/Home;->c:Lcom/google/android/gms/plus/PlusOneButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 553
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/PlusOneButton;

    .line 555
    new-instance v1, Lcom/wordloco/wordchallenge/view/ah;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ah;-><init>(Lcom/wordloco/wordchallenge/view/Home;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/PlusOneButton;->setOnPlusOneClickListener(Lcom/google/android/gms/plus/PlusOneButton$OnPlusOneClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 581
    :goto_3
    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/LikeView;

    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 582
    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Lcom/facebook/widget/LikeView;->setObjectId(Ljava/lang/String;)V

    .line 583
    const v0, 0x7f060079

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/LikeView;

    .line 584
    sget-object v1, Lcom/facebook/widget/LikeView$Style;->BUTTON:Lcom/facebook/widget/LikeView$Style;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/LikeView;->setLikeViewStyle(Lcom/facebook/widget/LikeView$Style;)V

    .line 594
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->e()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 595
    invoke-virtual {p0, v7}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 596
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 597
    const v2, 0x7f0200f8

    .line 596
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    :goto_4
    invoke-virtual {p0, v7}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/wordloco/wordchallenge/view/ai;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ai;-><init>(Lcom/wordloco/wordchallenge/view/Home;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    sget-boolean v0, Lcom/wordloco/wordchallenge/b/a;->B:Z

    if-eqz v0, :cond_29

    .line 629
    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 634
    :goto_5
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->a()V

    .line 635
    return-void

    .line 111
    :cond_14
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 113
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "es"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 114
    const-string v0, "es"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 116
    :cond_15
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 118
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 119
    const-string v1, "it"

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    if-eqz v0, :cond_16

    .line 120
    const-string v0, "it"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 122
    :cond_16
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 123
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 124
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 125
    const-string v1, "ru"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 126
    const-string v0, "ru"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :cond_17
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 129
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 130
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 131
    const-string v1, "pl"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 132
    const-string v0, "pl"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :cond_18
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 135
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 136
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 137
    const-string v1, "de"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 138
    const-string v0, "de"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 140
    :cond_19
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 141
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 143
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    .line 142
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 144
    const-string v1, "sv"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 145
    const-string v0, "sv"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 147
    :cond_1a
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 148
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 150
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    .line 149
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 151
    const-string v1, "cs"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 152
    const-string v0, "cs"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 154
    :cond_1b
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 156
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 158
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 159
    const-string v1, "fr"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 161
    const-string v0, "fr"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    :cond_1c
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 165
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "nl"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_1d

    .line 168
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 169
    const-string v1, "nl"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 171
    const-string v0, "nl"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    :cond_1d
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 175
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 178
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 180
    const-string v1, "pt"

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 180
    if-eqz v0, :cond_1e

    .line 182
    const-string v0, "pt"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    :cond_1e
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 187
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 190
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 192
    const-string v1, "uk"

    .line 191
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 192
    if-eqz v0, :cond_1f

    .line 194
    const-string v0, "uk"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 196
    :cond_1f
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 198
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 201
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 203
    const-string v1, "tr"

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    if-eqz v0, :cond_20

    .line 205
    const-string v0, "tr"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 207
    :cond_20
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 209
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 212
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 214
    const-string v1, "sk"

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 214
    if-eqz v0, :cond_21

    .line 216
    const-string v0, "sk"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 218
    :cond_21
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 220
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 223
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 225
    const-string v1, "zh"

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    if-eqz v0, :cond_22

    .line 227
    const-string v0, "zh"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 229
    :cond_22
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 231
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 234
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 236
    const-string v1, "ja"

    .line 235
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    if-eqz v0, :cond_23

    .line 238
    const-string v0, "ja"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    :cond_23
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 242
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 243
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 245
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 247
    const-string v1, "ko"

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 247
    if-eqz v0, :cond_24

    .line 249
    const-string v0, "ko"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    :cond_24
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 253
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 256
    sget-object v0, Lcom/wordloco/wordchallenge/b/a;->D:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 258
    const-string v1, "hi"

    .line 257
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 258
    if-eqz v0, :cond_25

    .line 260
    const-string v0, "hi"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 263
    :cond_25
    const-string v0, "en"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 283
    :cond_26
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 285
    new-instance v2, Ljava/util/Locale;

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->y()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 286
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto/16 :goto_1

    .line 352
    :cond_27
    invoke-virtual {p0, v8}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 578
    :catch_0
    move-exception v0

    .line 579
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 599
    :cond_28
    invoke-virtual {p0, v7}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 600
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 601
    const v2, 0x7f0200f7

    .line 600
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 631
    :cond_29
    const v0, 0x7f060088

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 91
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onDestroy()V

    .line 65
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 68
    :cond_0
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Home;->c:Lcom/google/android/gms/plus/PlusOneButton;

    .line 69
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    .line 70
    iput-object v1, p0, Lcom/wordloco/wordchallenge/view/Home;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 71
    const v0, 0x7f060076

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->setContentView(I)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 639
    invoke-super {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->onResume()V

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/Home;->e:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/PlusOneButton;

    .line 647
    const/4 v2, 0x0

    .line 646
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneButton;->initialize(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSignInFailed()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 879
    sget-boolean v0, Lcom/wordloco/wordchallenge/b/a;->B:Z

    if-eqz v0, :cond_1

    .line 880
    const v0, 0x7f060089

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 883
    const v0, 0x7f06008b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    const v0, 0x7f060084

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    const v0, 0x7f060085

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    const v0, 0x7f060086

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSignInSucceeded()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 859
    sget-boolean v0, Lcom/wordloco/wordchallenge/b/a;->B:Z

    if-eqz v0, :cond_1

    .line 860
    const v0, 0x7f060089

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    const v0, 0x7f06008a

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 863
    const v0, 0x7f06008b

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    const v0, 0x7f060084

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    const v0, 0x7f060085

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 870
    const v0, 0x7f060086

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 818
    :try_start_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v2, 0x0

    .line 819
    sget-object v3, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v3, v1, v2

    .line 818
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v0

    .line 819
    if-nez v0, :cond_0

    .line 820
    const v0, 0x7f0600a6

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 822
    :catch_0
    move-exception v0

    .line 823
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
