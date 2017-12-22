.class public Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "GalleryLomoActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecyclerProvider;


# static fields
.field private static final EXTRA_LOMO:Ljava/lang/String; = "ExtraLomo"

.field private static final TAG:Ljava/lang/String; = "nf_gallery_lomo"


# instance fields
.field private lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    return-void
.end method

.method public static showLomo(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string/jumbo v1, "ExtraLomo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected canApplyBrowseExperience()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->createGalleryFragment(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    move-result-object v0

    return-object v0
.end method

.method public getActionBarParentViewId()I
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f1001da

    return v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 91
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 84
    :pswitch_0
    const-string/jumbo v2, "MyListFakeId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->myListGallery:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x25dca47a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewRecycler()Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasEmbeddedToolbar()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ExtraLomo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 49
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 53
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->lomo:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
