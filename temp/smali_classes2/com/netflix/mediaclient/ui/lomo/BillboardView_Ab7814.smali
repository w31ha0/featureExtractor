.class public Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;
.super Lcom/netflix/mediaclient/ui/lomo/BillboardView;
.source "BillboardView_Ab7814.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BillboardView_ab7814"


# instance fields
.field private ctaPortraitButtonGroup:Landroid/view/View;

.field private infoView:Landroid/widget/ImageView;

.field private mBillboardListener:Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814$BillboardListener;

.field private myListTextView:Landroid/widget/TextView;

.field private originalsLogoUrl:Ljava/lang/String;

.field private originalsLogoView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private tvCardPortrait:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method private generateCallsToActionInPortrait(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 241
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    const-string/jumbo v0, "BillboardView_ab7814"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-void

    .line 247
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 249
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 250
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    const-string/jumbo v1, ""

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "play"

    const-string/jumbo v4, ""

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v6, "play"

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/netflix/model/leafs/originals/BillboardCTA;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v8

    .line 255
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasInfoBadge(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasDetailsButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_6

    .line 268
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->cta2Button:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V

    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->myListTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v11, :cond_8

    .line 280
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->cta1Button:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V

    goto :goto_0

    .line 252
    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 271
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasCTAMyList(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 272
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->showMyListView(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 273
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->updateMyListState()V

    .line 277
    :goto_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->cta2Button:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 275
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->myListTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 282
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->cta1Button:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private getRenderedWidthHeight(Lcom/netflix/model/leafs/originals/BillboardSummary;II)[I
    .locals 4

    .prologue
    .line 312
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 315
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    .line 316
    int-to-float v2, p3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 318
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    div-int/lit8 v1, v1, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 326
    mul-int v2, v1, p2

    div-int/2addr v2, p3

    .line 327
    const/4 v3, 0x0

    aput v1, v0, v3

    .line 328
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 330
    :cond_0
    return-object v0
.end method

.method private showMyListView(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->myListTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->myListTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->myListTextView:Landroid/widget/TextView;

    .line 295
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getTrackId()I

    move-result v5

    move-object v3, p1

    move-object v4, p2

    .line 294
    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 296
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 298
    :cond_1
    return-void
.end method

.method private updateMyListViewState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    .line 304
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-interface {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private updateOriginalsLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;II)V
    .locals 3

    .prologue
    .line 344
    invoke-direct {p0, p1, p3, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getRenderedWidthHeight(Lcom/netflix/model/leafs/originals/BillboardSummary;II)[I

    move-result-object v0

    .line 345
    const/4 v1, 0x1

    aget v1, v0, v1

    .line 346
    const/4 v2, 0x0

    aget v0, v0, v2

    .line 347
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->originalsLogoView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 348
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 349
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->originalsLogoView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    return-void
.end method

.method private updatePortraitLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;II)V
    .locals 3

    .prologue
    .line 334
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getRenderedWidthHeight(Lcom/netflix/model/leafs/originals/BillboardSummary;II)[I

    move-result-object v0

    .line 335
    const/4 v1, 0x1

    aget v1, v0, v1

    .line 336
    const/4 v2, 0x0

    aget v0, v0, v2

    .line 337
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->tvCardPortrait:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 338
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 339
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->tvCardPortrait:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    return-void
.end method


# virtual methods
.method protected findViews()V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f1000f2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->ctaPortraitButtonGroup:Landroid/view/View;

    .line 86
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoPhone:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArtFrame:Landroid/widget/FrameLayout;

    .line 88
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasCTA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const v0, 0x7f100176

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->cta1Button:Landroid/widget/Button;

    .line 91
    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->cta2Button:Landroid/widget/Button;

    .line 92
    const v0, 0x7f100175

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->myListTextView:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f100179

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoView:Landroid/widget/ImageView;

    .line 94
    const v0, 0x7f100178

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoButton:Landroid/widget/Button;

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const v0, 0x7f1000f1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->tvCardPortrait:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 98
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->originalsLogoView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 101
    :cond_1
    return-void
.end method

.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArtUrl:Ljava/lang/String;

    .line 224
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->showArtworkOnly:Z

    if-eqz v1, :cond_2

    .line 225
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v1

    if-nez v1, :cond_3

    .line 230
    :cond_1
    const-string/jumbo v1, "BillboardView_ab7814"

    const-string/jumbo v2, "Data missing when trying to render billboard image"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2
    :goto_0
    return-object v0

    .line 232
    :cond_3
    const-string/jumbo v1, "BillboardView_ab7814"

    const-string/jumbo v2, "Showing artwork only, image url: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f03002a

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->hide()V

    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->tvCardPortrait:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 152
    return-void
.end method

.method protected setupViews()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->mDetailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ContextUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814$BillboardListener;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getPrimaryFrag()Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814$BillboardListener;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->mBillboardListener:Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814$BillboardListener;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasCTA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->ctaPortraitButtonGroup:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoPhone:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->mDetailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0100

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->tvCardPortrait:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->originalsLogoView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasInfoBadge(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->mDetailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasDetailsButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->mDetailsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :goto_1
    return-void

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 156
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v8

    .line 158
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v9

    .line 159
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getOriginalsLogo()Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getOriginalsLogo()Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->originalsLogoUrl:Ljava/lang/String;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasCTA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->generateCallsToActionInPortrait(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V

    .line 167
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 168
    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->setVisibility(I)V

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->recordImpression(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 173
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArtUrl:Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getInfoText(Lcom/netflix/model/leafs/originals/BillboardSummary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoText:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoText:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->infoPhone:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getStackedLogo()Lcom/netflix/model/leafs/originals/BillboardStackedLogo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getStackedLogo()Lcom/netflix/model/leafs/originals/BillboardStackedLogo;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardStackedLogo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardStackedLogo;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 185
    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardStackedLogo;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 186
    invoke-direct {p0, v9, v1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->updatePortraitLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;II)V

    .line 187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->tvCardPortrait:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 191
    :cond_2
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getOriginalsLogo()Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getOriginalsLogo()Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getOriginalsLogo()Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardOriginalsLogo;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v9, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->updateOriginalsLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;II)V

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->originalsLogoView:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->originalsLogoUrl:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 197
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 198
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 199
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->mBillboardListener:Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814$BillboardListener;

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->mBillboardListener:Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814$BillboardListener;

    invoke-virtual {p0, p1, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814$BillboardListener;->onBillboardReceived(Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;Ljava/lang/String;Ljava/lang/String;II)V

    .line 211
    :cond_4
    :goto_1
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    const-string/jumbo v0, "BillboardView_ab7814"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loggin billboard impression for video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->IMPRESSION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->impressionParams:Ljava/util/Map;

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->updateViewVisibility()V

    .line 219
    return-void

    .line 165
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setPadding(IIII)V

    goto/16 :goto_0

    .line 205
    :cond_7
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    goto :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 45
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method

.method protected updateViewVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    goto :goto_0
.end method
