.class public Lcom/adbert/b/d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Landroid/widget/RelativeLayout;

.field c:Lcom/adbert/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adbert/a/c/a;Lcom/adbert/a/b/b;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    .line 28
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/adbert/b/d$1;

    invoke-direct {v1, p0}, Lcom/adbert/b/d$1;-><init>(Lcom/adbert/b/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 30
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 31
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 33
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 34
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 35
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 37
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/adbert/b/d$2;

    invoke-direct {v1, p0}, Lcom/adbert/b/d$2;-><init>(Lcom/adbert/b/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 47
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/adbert/b/d$3;

    invoke-direct {v1, p0, p2}, Lcom/adbert/b/d$3;-><init>(Lcom/adbert/b/d;Lcom/adbert/a/c/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 57
    iget-object v0, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/adbert/b/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/b/d;->b:Landroid/widget/RelativeLayout;

    .line 60
    iget-object v0, p0, Lcom/adbert/b/d;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/adbert/b/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    sget-object v0, Lcom/adbert/a/b/b;->c:Lcom/adbert/a/b/b;

    if-eq p3, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/adbert/b/d;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/adbert/b/d$4;

    invoke-direct {v1, p0, p2}, Lcom/adbert/b/d$4;-><init>(Lcom/adbert/b/d;Lcom/adbert/a/c/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/adbert/a/a/a;)V
    .locals 4

    .prologue
    .line 87
    iput-object p2, p0, Lcom/adbert/b/d;->c:Lcom/adbert/a/a/a;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!doctype html><html><head><meta charset=\"UTF-8\"><title>Untitled Document</title><style>body{\tmargin:0;\tpadding:0;\t}</style></head><body><div><img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" width=\"100%\"//></div></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    const-string v2, "utf8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\+"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCover()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adbert/b/d;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method
