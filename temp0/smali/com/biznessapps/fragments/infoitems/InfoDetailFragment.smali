.class public Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "InfoDetailFragment.java"


# instance fields
.field private backButton:Landroid/widget/Button;

.field protected infoItem:Lcom/biznessapps/model/InfoItem;

.field private itemId:Ljava/lang/String;

.field private onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

.field private tabId:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$1;-><init>(Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->backButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$2;-><init>(Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/InfoItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    .line 121
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    const-string v0, "http://www.biznessapps.com/iphone/info_item_detail.php?id=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->itemId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initViews()V
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->webView:Landroid/webkit/WebView;

    .line 82
    iget-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->info_detail_back_button:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->backButton:Landroid/widget/Button;

    .line 83
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CHILDREN_TAB_LABEL_PRESENT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, "isChildLabelPresent":Z
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->backButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->backButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->getBackButtonBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->backButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    sget v0, Lcom/biznessapps/layout/R$layout;->info_detail_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->initViews()V

    .line 56
    invoke-direct {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->initListeners()V

    .line 57
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->loadData()V

    .line 58
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;)V

    .line 59
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 74
    .local v0, "activity":Lcom/biznessapps/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;)V

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onDestroy()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onResume()V

    .line 65
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 66
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/biznessapps/activities/CommonTabFragmentActivity;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Lcom/biznessapps/activities/CommonTabFragmentActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->getViewPager()Lcom/biznessapps/fragments/CustomizableViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CustomizableViewPager;->enableScrolling(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ITEMID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->itemId:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->tabId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseInfo(Ljava/lang/String;)Lcom/biznessapps/model/InfoItem;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    .line 115
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 6
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$3;-><init>(Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 147
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/InfoItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->webView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 149
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/InfoItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->data_loading_failure:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
