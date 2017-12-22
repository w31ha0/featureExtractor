.class public Lcom/netflix/mediaclient/ui/ums/EogLandingPage;
.super Ljava/lang/Object;
.source "EogLandingPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "eog_landing"


# instance fields
.field private mAccount:Landroid/widget/TextView;

.field private mBody:Landroid/widget/TextView;

.field private mContinue:Landroid/widget/TextView;

.field private mImage1:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private mImage2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

.field private mPlans:Landroid/widget/TextView;

.field private mSeeOtherPlansHeader:Landroid/widget/LinearLayout;

.field private mSkip:Landroid/widget/TextView;

.field private mSkipNowButton:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    .line 50
    const v0, 0x7f1001a9

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mTitle:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f1001aa

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mBody:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f1001ac

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mContinue:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f1001ae

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mPlans:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f1001af

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSkip:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f1001b0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mAccount:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f1001a5

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSkipNowButton:Landroid/widget/LinearLayout;

    .line 57
    const v0, 0x7f1001ad

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSeeOtherPlansHeader:Landroid/widget/LinearLayout;

    .line 58
    return-void
.end method

.method public static buildAccountString(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerLinkText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerLinkText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v1, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 144
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public initUi()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->canProceed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v7

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->body()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mBody:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mContinue:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->continueBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mPlans:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->seeOtherPlansText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->skipBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mAccount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v1, v7}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->buildAccountString(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mAccount:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSkipNowButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    :cond_3
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldUseLayoutWithImages(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001a6

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage1:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    const v1, 0x7f1001a7

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 85
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage1:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage1:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 87
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage1()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, ""

    .line 88
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    .line 86
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 90
    :cond_4
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mImage2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 92
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage2()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v4, ""

    .line 93
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    .line 91
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 97
    :cond_5
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldShowOtherPlans(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mSeeOtherPlansHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public performAction(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 156
    if-nez p1, :cond_0

    .line 157
    const-string/jumbo v1, "eog_landing"

    const-string/jumbo v2, "EogLandingPage:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 183
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :sswitch_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EogUtils;->shouldShowOtherPlans(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->goToPlanPage()V

    goto :goto_0

    .line 166
    :cond_1
    const-string/jumbo v1, "eog_landing"

    const-string/jumbo v2, "showPlans view should be invisible.."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :sswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->backPressed()V

    goto :goto_0

    .line 173
    :sswitch_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->recordPlanSelection()V

    .line 174
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->getEogAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->shouldBlockUser(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createStartIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage;->mOwner:Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/ums/EndOfGrandfatheringActivity;->finish()V

    goto :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x7f1001a5 -> :sswitch_1
        0x7f1001ab -> :sswitch_2
        0x7f1001ad -> :sswitch_0
    .end sparse-switch
.end method
