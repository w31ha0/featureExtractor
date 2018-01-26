.class public Lcom/biznessapps/fragments/qr/QrScannerFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "QrScannerFragment.java"


# static fields
.field private static final SCAN_ACTIVITY_CODE:I = 0x1

.field private static final SCAN_RESULT:Ljava/lang/String; = "SCAN_RESULT"


# instance fields
.field private chooseCameraButton:Landroid/widget/Button;

.field private data:Lcom/biznessapps/model/CommonDataItem;

.field private headerContainer:Landroid/view/ViewGroup;

.field private helpContainer:Landroid/view/ViewGroup;

.field private layout:Landroid/view/ViewGroup;

.field private resultScanCodeView:Landroid/widget/TextView;

.field private tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/qr/QrScannerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/qr/QrScannerFragment;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->startScanning()V

    return-void
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->chooseCameraButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/qr/QrScannerFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment$1;-><init>(Lcom/biznessapps/fragments/qr/QrScannerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->helpContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/biznessapps/fragments/qr/QrScannerFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment$2;-><init>(Lcom/biznessapps/fragments/qr/QrScannerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->scan_code_header_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->headerContainer:Landroid/view/ViewGroup;

    .line 56
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->scan_code_result_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->resultScanCodeView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->scan_code_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->chooseCameraButton:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->qr_help_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->helpContainer:Landroid/view/ViewGroup;

    .line 59
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->chooseCameraButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 61
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->headerContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 62
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->headerContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->scan_code_description:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->helpContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->resultScanCodeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->headerContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->find_qr_code_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->helpContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->need_help_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->helpContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->more_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    return-void
.end method

.method private openWebView(Ljava/lang/String;)V
    .locals 4
    .param p1, "webData"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_0
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 154
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method private setBackgrounds()V
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->data:Lcom/biznessapps/model/CommonDataItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/CommonDataItem;->getImage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->bitmapUrl:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startScanning()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/layout/views/scanning/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "QR_SCANNER_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/CommonDataItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->data:Lcom/biznessapps/model/CommonDataItem;

    .line 112
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->data:Lcom/biznessapps/model/CommonDataItem;

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
    .line 96
    const-string v0, "http://www.biznessapps.com/iphone/qr_reader.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewsRef()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->getViewsRef()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 123
    const-string v1, "SCAN_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "contents":Ljava/lang/String;
    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    .end local v0    # "contents":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local v0    # "contents":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->resultScanCodeView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->resultScanCodeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->openWebView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    sget v0, Lcom/biznessapps/layout/R$layout;->qr_scanner_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    .line 47
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->scan_code_root_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->layout:Landroid/view/ViewGroup;

    .line 48
    invoke-direct {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->initViews()V

    .line 49
    invoke-direct {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->initListeners()V

    .line 50
    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->loadData()V

    .line 51
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->tabId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseCommonData(Ljava/lang/String;)Lcom/biznessapps/model/CommonDataItem;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->data:Lcom/biznessapps/model/CommonDataItem;

    .line 102
    invoke-virtual {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "QR_SCANNER_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment;->data:Lcom/biznessapps/model/CommonDataItem;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->setBackgrounds()V

    .line 107
    return-void
.end method
