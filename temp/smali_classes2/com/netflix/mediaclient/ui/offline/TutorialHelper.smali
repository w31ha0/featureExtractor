.class public Lcom/netflix/mediaclient/ui/offline/TutorialHelper;
.super Ljava/lang/Object;
.source "TutorialHelper.java"


# static fields
.field public static final EMPTY:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

.field private static final PREFS:Ljava/lang/String; = "com.netflix.android.fullscreen_tutorial"

.field public static final TAG:Ljava/lang/String; = "TutorialHelper"

.field private static final USER_TUTORIAL_CAST_BUTTON:Ljava/lang/String; = "USER_TUTORIAL_CAST_BUTTON"

.field private static final USER_TUTORIAL_DOWNLOAD_BUTTON:Ljava/lang/String; = "USER_TUTORIAL_DOWNLOAD_BUTTON"

.field private static final USER_TUTORIAL_DOWNLOAD_GENRE:Ljava/lang/String; = "USER_TUTORIAL_DOWNLOADS_GENRE"

.field public static final USER_TUTORIAL_FULLSCREEN:Ljava/lang/String; = "USER_TUTORIAL_FULLSCREEN"

.field private static final USER_TUTORIAL_MYDOWNLOADS_BUTTON:Ljava/lang/String; = "USER_TUTORIAL_MY_DOWNLOADS_BUTTON"


# instance fields
.field context:Landroid/content/Context;

.field profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

.field tooltip:Lcom/netflix/android/tooltips/Tooltip;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    invoke-direct {v0, v1, v1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->EMPTY:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->createTooltip(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->scrollToDownloadButton(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->scrollToFindDownloadButton(Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V

    return-void
.end method

.method public static buildCastTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 249
    :goto_0
    return-object v0

    .line 240
    :cond_1
    const v0, 0x7f10018d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    .line 241
    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-static {p1, v0, p0, v1, v2}, Lcom/netflix/android/tooltips/Tooltip;->makeTooltip(Landroid/content/Context;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    .line 243
    const-string/jumbo v1, "USER_TUTORIAL_CAST_BUTTON"

    invoke-static {v1, p2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->getTutorialPrefKey(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/Tooltip;->setOneTime(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 249
    goto :goto_0
.end method

.method public static buildDownloadButtonTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 198
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 211
    :goto_0
    return-object v0

    .line 202
    :cond_1
    const v0, 0x7f10018d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    .line 203
    if-eqz v0, :cond_2

    .line 204
    const v1, 0x7f090232

    const v2, 0x7f09022d

    invoke-static {p1, v0, p0, v1, v2}, Lcom/netflix/android/tooltips/Tooltip;->makeTooltip(Landroid/content/Context;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;II)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "USER_TUTORIAL_DOWNLOAD_BUTTON"

    invoke-static {v1, p2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->getTutorialPrefKey(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/Tooltip;->setOneTime(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 211
    goto :goto_0
.end method

.method public static buildMyDownloadTutorial(Landroid/view/View;Landroid/app/Activity;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 217
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 230
    :goto_0
    return-object v0

    .line 221
    :cond_1
    const v0, 0x7f10018d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    .line 222
    if-eqz v0, :cond_2

    .line 223
    const v1, 0x7f090232

    const v2, 0x7f090231

    invoke-static {p1, v0, p0, v1, v2}, Lcom/netflix/android/tooltips/Tooltip;->makeTooltip(Landroid/content/Context;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;II)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "USER_TUTORIAL_MY_DOWNLOADS_BUTTON"

    invoke-static {v1, p2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->getTutorialPrefKey(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/Tooltip;->setOneTime(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 230
    goto :goto_0
.end method

.method public static clearPrefs(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    const-string/jumbo v0, "com.netflix.android.fullscreen_tutorial"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void
.end method

.method private createTooltip(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;->setupTutorial(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Lcom/netflix/android/tooltips/Tooltip;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->dismissTutorial()V

    .line 188
    return-void

    :cond_1
    move v2, v1

    .line 184
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static getTutorialPrefKey(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isOfflineFeatureEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 1

    .prologue
    .line 166
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollToDownloadButton(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$2;-><init>(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/Tooltip;->setCallback(Lcom/netflix/android/tooltips/Tooltip$Callback;)V

    .line 108
    invoke-static {p2}, Lcom/netflix/mediaclient/util/ViewUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 110
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 111
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v1

    .line 112
    sub-int/2addr v0, v1

    .line 113
    if-lez v0, :cond_0

    .line 114
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$3;-><init>(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 124
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 125
    const/4 v2, 0x0

    add-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/Tooltip;->show()V

    goto :goto_0
.end method

.method private scrollToFindDownloadButton(Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;-><init>(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 88
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "USER_TUTORIAL_DOWNLOAD_BUTTON"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->getTutorialPrefKey(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/android/tooltips/Tooltip;->isConsumed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissTutorial()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/Tooltip;->dismiss()V

    .line 194
    :cond_0
    return-void
.end method

.method public setFullscreenTutorialDisplayed(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.netflix.android.fullscreen_tutorial"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "USER_TUTORIAL_FULLSCREEN"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->getTutorialPrefKey(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    :cond_1
    return-void
.end method

.method public shouldDisplayFullscreenTutorial(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 60
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->isLaunchTutorial(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->isOfflineFeatureEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.netflix.android.fullscreen_tutorial"

    .line 61
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "USER_TUTORIAL_FULLSCREEN"

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->getTutorialPrefKey(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public showTutorial(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->isGuidanceTutorial(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->isOfflineFeatureEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->createTooltip(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/Tooltip;->show()V

    goto :goto_0
.end method

.method public showTutorialForVideoWithScroll(Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTutorialOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->context:Landroid/content/Context;

    .line 137
    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->isGuidanceTutorial(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 139
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p4}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->isOfflineFeatureEnabled(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "USER_TUTORIAL_DOWNLOAD_BUTTON"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->profile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    .line 143
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->getTutorialPrefKey(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lcom/netflix/android/tooltips/Tooltip;->isConsumed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;

    invoke-direct {v1, p0, p3, p1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;-><init>(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
