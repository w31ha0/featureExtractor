.class public Lcom/biznessapps/fragments/webview/WebViewFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "WebViewFragment.java"


# instance fields
.field private GOOGLE_DOCS_WRAPPER:Ljava/lang/String;

.field private PDF_TYPE:Ljava/lang/String;

.field private onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

.field private progressBar:Landroid/view/View;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 34
    const-string v0, "http://docs.google.com/gview?embedded=true&url="

    iput-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->GOOGLE_DOCS_WRAPPER:Ljava/lang/String;

    .line 36
    const-string v0, ".pdf"

    iput-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->PDF_TYPE:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/biznessapps/fragments/webview/WebViewFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/webview/WebViewFragment$1;-><init>(Lcom/biznessapps/fragments/webview/WebViewFragment;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/webview/WebViewFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/webview/WebViewFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/webview/WebViewFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/webview/WebViewFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->progressBar:Landroid/view/View;

    return-object v0
.end method

.method private initControls(Landroid/view/ViewGroup;)V
    .locals 13
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 79
    sget v0, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->webView:Landroid/webkit/WebView;

    .line 80
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "URL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 82
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/biznessapps/fragments/webview/WebViewFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/webview/WebViewFragment$2;-><init>(Lcom/biznessapps/fragments/webview/WebViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SHOW_WEB_ORIGINAL_SIZE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wufoo.com"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->PDF_TYPE:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->GOOGLE_DOCS_WRAPPER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 153
    .end local v10    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 117
    .restart local v10    # "url":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebViewWithoutZooming(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 121
    :cond_3
    const-string v0, "youtube"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "v="

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    const-string v0, "v="

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 123
    .local v9, "indexOfVideoId":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_1

    .line 124
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, "videoId":Ljava/lang/String;
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v11, "videoClient":Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://youtube.com/watch?v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v11}, Lcom/biznessapps/fragments/webview/WebViewFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v11    # "videoClient":Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    goto :goto_1

    .line 130
    :catch_0
    move-exception v7

    .line 132
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 137
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v9    # "indexOfVideoId":I
    .end local v12    # "videoId":Ljava/lang/String;
    :cond_4
    const-string v0, "youtube.com"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "http://snd.sc/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "soundcloud.com"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "twitter.com"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "mp3"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "m3u"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_5
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v8, "externalIntent":Landroid/content/Intent;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v8}, Lcom/biznessapps/fragments/webview/WebViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    goto/16 :goto_1

    .line 146
    .end local v8    # "externalIntent":Landroid/content/Intent;
    .end local v10    # "url":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "WEB_DATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 147
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "WEB_DATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->webView:Landroid/webkit/WebView;

    invoke-static {v6}, Lcom/biznessapps/utils/StringUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    .end local v6    # "description":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->data_loading_failure:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    sget v0, Lcom/biznessapps/layout/R$layout;->webview_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->root:Landroid/view/ViewGroup;

    .line 53
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getProgressBar(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->progressBar:Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->initControls(Landroid/view/ViewGroup;)V

    .line 56
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;)V

    .line 57
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 72
    .local v0, "activity":Lcom/biznessapps/activities/CommonFragmentActivity;
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment;->onBackPressedListener:Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->removeBackPressedListener(Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;)V

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onDestroy()V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 64
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/biznessapps/activities/CommonTabFragmentActivity;

    if-eqz v1, :cond_0

    .line 65
    check-cast v0, Lcom/biznessapps/activities/CommonTabFragmentActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->getViewPager()Lcom/biznessapps/fragments/CustomizableViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CustomizableViewPager;->enableScrolling(Z)V

    .line 67
    :cond_0
    return-void
.end method
