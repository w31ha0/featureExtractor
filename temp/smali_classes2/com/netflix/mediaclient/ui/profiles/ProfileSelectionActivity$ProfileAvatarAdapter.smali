.class Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProfileSelectionActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;)V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 707
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 718
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 723
    if-nez p2, :cond_0

    .line 724
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e4

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 725
    new-instance v2, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;

    const v0, 0x7f1000a7

    .line 727
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v1, 0x7f10033a

    .line 728
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f100339

    .line 729
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;-><init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Landroid/widget/TextView;Landroid/view/View;)V

    .line 725
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 732
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;

    .line 733
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->getItem(I)Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v4

    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$600(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 737
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->access$700(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    const v1, 0x7f020241

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageResource(I)V

    .line 738
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->access$800(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09023c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 739
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->access$900(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 750
    :goto_0
    return-object p2

    .line 743
    :cond_1
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->access$800(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-static {v7}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->access$700(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    .line 745
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v6, 0x1

    .line 744
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 746
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->access$900(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$400(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 747
    invoke-static {v7}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;->access$700(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Holder;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$400(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3e4ccccd    # 0.2f

    :goto_2
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    move v0, v9

    .line 746
    goto :goto_1

    .line 747
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 755
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 756
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->access$1000(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    .line 757
    return-void
.end method
