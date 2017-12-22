.class public Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;
.super Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;
.source "OfflineTutorialDialogFrag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/BaseTutorialDialogFrag;-><init>()V

    return-void
.end method


# virtual methods
.method public markAsSeen()V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getTutorialHelper()Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->setFullscreenTutorialDisplayed(Z)V

    .line 22
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    const/4 v0, 0x0

    const v1, 0x1030010

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->setStyle(II)V

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "android:id/titleDivider"

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 39
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialContentBinder;->bind(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public showAvailableToDownload()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineTutorialDialogFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->showAvailableDownloadsGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 46
    :cond_0
    return-void
.end method
