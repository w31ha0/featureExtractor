.class public Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;
.source "PreReleaseDetailsActivity.java"


# instance fields
.field mylistReceiver:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity$MyListReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity$MyListReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity$MyListReceiver;-><init>(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;->mylistReceiver:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity$MyListReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;->showSnackBar()V

    return-void
.end method

.method private showSnackBar()V
    .locals 4

    .prologue
    .line 57
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09026f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 60
    const v2, 0x7f100180

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 65
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 68
    :goto_0
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extra_is_movie"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;->create(Ljava/lang/String;Z)Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsFrag;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;->mylistReceiver:Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity$MyListReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.mylist.intent.action.ADD"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/PreReleaseDetailsActivity;->registerReceiverWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method
