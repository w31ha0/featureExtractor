.class public Lcom/biznessapps/fragments/contacts/ContactsFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "ContactsFragment.java"


# static fields
.field private static final FIRST_INDEX:I


# instance fields
.field private callUsButton:Landroid/widget/Button;

.field private commentWebView:Landroid/webkit/WebView;

.field private emailUsButton:Landroid/widget/Button;

.field private locationId:Ljava/lang/String;

.field private locationInfo:Lcom/biznessapps/model/LocationItem;

.field private nameTextView:Landroid/widget/TextView;

.field private tabId:Ljava/lang/String;

.field private viewMapButton:Landroid/widget/Button;

.field private viewWebsiteButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/contacts/ContactsFragment;)Lcom/biznessapps/model/LocationItem;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/contacts/ContactsFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    return-object v0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->viewMapButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/contacts/ContactsFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment$1;-><init>(Lcom/biznessapps/fragments/contacts/ContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->callUsButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/contacts/ContactsFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment$2;-><init>(Lcom/biznessapps/fragments/contacts/ContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->viewWebsiteButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/contacts/ContactsFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment$3;-><init>(Lcom/biznessapps/fragments/contacts/ContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->emailUsButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/contacts/ContactsFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment$4;-><init>(Lcom/biznessapps/fragments/contacts/ContactsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->view_map_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->viewMapButton:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->call_us_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->callUsButton:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->view_website_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->viewWebsiteButton:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->email_us_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->emailUsButton:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->title_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->nameTextView:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->contact_comment_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->commentWebView:Landroid/webkit/WebView;

    .line 169
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->viewMapButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 170
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->callUsButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 171
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->viewWebsiteButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 172
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->emailUsButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 173
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOCATIONS_MAP_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/LocationItem;

    iput-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "isBgStored":Z
    iget-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/LocationItem;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "bgUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/biznessapps/utils/ImageManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 159
    .end local v0    # "bgUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    return v3

    .restart local v0    # "bgUrl":Ljava/lang/String;
    :cond_1
    move v1, v4

    .line 157
    goto :goto_0

    .end local v0    # "bgUrl":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 159
    goto :goto_1
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "appCode":Ljava/lang/String;
    const-string v2, "http://www.biznessapps.com/iphone/location.php?app_code=%s&version=4"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationId:Ljava/lang/String;

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&location_id=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->tabId:Ljava/lang/String;

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&tab_id=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->tabId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_1
    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    sget v0, Lcom/biznessapps/layout/R$layout;->contact_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    .line 55
    invoke-direct {p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->initViews()V

    .line 56
    invoke-direct {p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->initListeners()V

    .line 57
    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->loadData()V

    .line 58
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->tabId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LOCATION_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 7
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseLocation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v3

    .line 85
    .local v0, "isNotEmptyList":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/LocationItem;

    iput-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    .line 87
    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOCATIONS_MAP_PROPERTY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v2, v5, v6}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    return v2

    .end local v0    # "isNotEmptyList":Z
    :cond_1
    move v0, v4

    .line 84
    goto :goto_0

    .restart local v0    # "isNotEmptyList":Z
    :cond_2
    move v2, v4

    .line 89
    goto :goto_1
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 17
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/LocationItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->commentWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v3}, Lcom/biznessapps/model/LocationItem;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->commentWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 103
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->contact_layout:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 104
    .local v9, "layout":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getImage()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "contactsBgUrl":Ljava/lang/String;
    move-object/from16 v16, v7

    .line 106
    .local v16, "url":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore$UiSettings;->getHomeBgUrl()Ljava/lang/String;

    move-result-object v16

    .line 109
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->opening_times_header_label:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 110
    .local v13, "text":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->opening_times_layout:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TableLayout;

    .line 111
    .local v12, "table":Landroid/widget/TableLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getOpeningTimes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->locationInfo:Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/LocationItem;->getOpeningTimes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/biznessapps/model/LocationOpeningTime;

    .line 113
    .local v14, "time":Lcom/biznessapps/model/LocationOpeningTime;
    new-instance v11, Landroid/widget/TableRow;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 114
    .local v11, "row":Landroid/widget/TableRow;
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v1}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v10, "openingTimeText":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/high16 v1, -0x1000000

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-virtual {v14}, Lcom/biznessapps/model/LocationOpeningTime;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v14}, Lcom/biznessapps/model/LocationOpeningTime;->getDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_2
    invoke-virtual {v11, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 126
    new-instance v10, Landroid/widget/TextView;

    .end local v10    # "openingTimeText":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v10    # "openingTimeText":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const/high16 v1, -0x1000000

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    invoke-virtual {v14}, Lcom/biznessapps/model/LocationOpeningTime;->getOpenFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/biznessapps/model/LocationOpeningTime;->getOpenFrom()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .local v15, "timeText":Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Lcom/biznessapps/model/LocationOpeningTime;->getOpenTo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->to:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/biznessapps/model/LocationOpeningTime;->getOpenTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_3
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .end local v15    # "timeText":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v11, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 139
    invoke-virtual {v12, v11}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 101
    .end local v7    # "contactsBgUrl":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "layout":Landroid/view/ViewGroup;
    .end local v10    # "openingTimeText":Landroid/widget/TextView;
    .end local v11    # "row":Landroid/widget/TableRow;
    .end local v12    # "table":Landroid/widget/TableLayout;
    .end local v13    # "text":Landroid/widget/TextView;
    .end local v14    # "time":Lcom/biznessapps/model/LocationOpeningTime;
    .end local v16    # "url":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/fragments/contacts/ContactsFragment;->commentWebView:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_0

    .line 141
    .restart local v7    # "contactsBgUrl":Ljava/lang/String;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "layout":Landroid/view/ViewGroup;
    .restart local v12    # "table":Landroid/widget/TableLayout;
    .restart local v13    # "text":Landroid/widget/TextView;
    .restart local v16    # "url":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 148
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/fragments/contacts/ContactsFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v9}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V

    .line 149
    return-void

    .line 144
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_2
.end method
