.class Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;
.super Landroid/widget/BaseAdapter;
.source "AvatarsGridActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$1;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;-><init>(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)V

    return-void
.end method

.method private adjustGridViewPaddings(IIFF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 405
    int-to-float v0, p2

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 407
    sub-int v0, p1, v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 415
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$700(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Landroid/widget/GridView;

    move-result-object v1

    int-to-float v2, v0

    sub-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 416
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 350
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$500(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 355
    if-nez p2, :cond_0

    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030022

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 357
    new-instance v2, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;

    const v0, 0x7f1000a7

    .line 358
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v1, 0x7f1000a8

    .line 359
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;-><init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Landroid/widget/ImageView;)V

    .line 357
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 362
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;

    .line 363
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$900(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 366
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;->access$1000(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;->access$1000(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f02023f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 372
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;->access$1100(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 371
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 374
    return-object p2

    .line 369
    :cond_1
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;->access$1000(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->setupGridViewColumns()V

    .line 381
    return-void
.end method

.method public setupGridViewColumns()V
    .locals 5

    .prologue
    .line 384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$700(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    .line 387
    if-lez v0, :cond_0

    .line 388
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 389
    const v2, 0x7f0a01d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 390
    const v3, 0x7f0a01d6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v2

    .line 391
    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-int v3, v3

    .line 392
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->this$0:Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;->access$700(Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity;)Landroid/widget/GridView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 393
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/netflix/mediaclient/ui/profiles/AvatarsGridActivity$ProfileAvatarAdapter;->adjustGridViewPaddings(IIFF)V

    .line 395
    :cond_0
    return-void
.end method
