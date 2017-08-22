.class Lc/InAppBrowser$1;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lvpadn/f;

.field final synthetic c:Lc/InAppBrowser;


# direct methods
.method constructor <init>(Lc/InAppBrowser;Ljava/lang/String;Lvpadn/f;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iput-object p2, p0, Lc/InAppBrowser$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/InAppBrowser$1;->b:Lvpadn/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 307
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v2, v2, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 307
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 310
    return v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 315
    iget-object v0, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v2, v2, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1030006

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lc/InAppBrowser;->a(Lc/InAppBrowser;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 316
    iget-object v0, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v0}, Lc/InAppBrowser;->a(Lc/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 317
    iget-object v0, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v0}, Lc/InAppBrowser;->a(Lc/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 318
    iget-object v0, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v0}, Lc/InAppBrowser;->a(Lc/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 319
    iget-object v0, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v0}, Lc/InAppBrowser;->a(Lc/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lc/InAppBrowser$1$1;

    invoke-direct {v1, p0}, Lc/InAppBrowser$1$1;-><init>(Lc/InAppBrowser$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 333
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v1, v1, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 337
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v2, v2, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 338
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lc/InAppBrowser$1;->a(I)I

    move-result v3

    invoke-direct {v2, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    invoke-direct {p0, v8}, Lc/InAppBrowser$1;->a(I)I

    move-result v2

    invoke-direct {p0, v8}, Lc/InAppBrowser$1;->a(I)I

    move-result v3

    invoke-direct {p0, v8}, Lc/InAppBrowser$1;->a(I)I

    move-result v4

    invoke-direct {p0, v8}, Lc/InAppBrowser$1;->a(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 340
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 341
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 344
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v3, v3, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 345
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 347
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 348
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 351
    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v4, v4, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v4}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 352
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 354
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    const-string v4, "Back Button"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setId(I)V

    .line 357
    const-string v4, "<"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 358
    new-instance v4, Lc/InAppBrowser$1$2;

    invoke-direct {v4, p0}, Lc/InAppBrowser$1$2;-><init>(Lc/InAppBrowser$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    new-instance v4, Landroid/widget/Button;

    iget-object v5, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v5, v5, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v5}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 366
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    invoke-virtual {v5, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 368
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    const-string v5, "Forward Button"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 370
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setId(I)V

    .line 371
    const-string v5, ">"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 372
    new-instance v5, Lc/InAppBrowser$1$3;

    invoke-direct {v5, p0}, Lc/InAppBrowser$1$3;-><init>(Lc/InAppBrowser$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v5, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    new-instance v6, Landroid/widget/EditText;

    iget-object v7, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v7, v7, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v7}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lc/InAppBrowser;->a(Lc/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 380
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 381
    invoke-virtual {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 382
    const/4 v6, 0x5

    invoke-virtual {v5, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 383
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v5, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v5}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setId(I)V

    .line 385
    iget-object v5, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v5}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 386
    iget-object v5, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v5}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lc/InAppBrowser$1;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v5, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v5}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 388
    iget-object v5, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v5}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 389
    iget-object v5, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v5}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 390
    iget-object v5, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v5}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lc/InAppBrowser$1$4;

    invoke-direct {v6, p0}, Lc/InAppBrowser$1$4;-><init>(Lc/InAppBrowser$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 402
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v6, v6, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v6}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 403
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 405
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    const-string v6, "Close Button"

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 407
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 408
    const-string v6, "Done"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 409
    new-instance v6, Lc/InAppBrowser$1$5;

    invoke-direct {v6, p0}, Lc/InAppBrowser$1$5;-><init>(Lc/InAppBrowser$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    new-instance v7, Landroid/webkit/WebView;

    iget-object v8, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v8, v8, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v8}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lc/InAppBrowser;->a(Lc/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 417
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v6

    new-instance v7, Lc/InAppBrowser$b;

    iget-object v8, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-direct {v7, v8}, Lc/InAppBrowser$b;-><init>(Lc/InAppBrowser;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 419
    new-instance v6, Lc/InAppBrowser$a;

    iget-object v7, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v8, p0, Lc/InAppBrowser$1;->b:Lvpadn/f;

    iget-object v9, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v9}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lc/InAppBrowser$a;-><init>(Lc/InAppBrowser;Lvpadn/f;Landroid/widget/EditText;)V

    .line 420
    iget-object v7, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v7}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 421
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 422
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 423
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 424
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 432
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 433
    iget-object v7, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    iget-object v7, v7, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v7}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "inAppBrowserDB"

    invoke-virtual {v7, v8, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 434
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 436
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v6

    iget-object v7, p0, Lc/InAppBrowser$1;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 437
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setId(I)V

    .line 438
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 439
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 440
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->requestFocus()Z

    .line 441
    iget-object v6, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v6}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 444
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 445
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 448
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v2, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v2}, Lc/InAppBrowser;->d(Lc/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 450
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 453
    iget-object v2, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v2}, Lc/InAppBrowser;->g(Lc/InAppBrowser;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    :cond_0
    iget-object v1, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v1}, Lc/InAppBrowser;->f(Lc/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 462
    iget-object v2, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v2}, Lc/InAppBrowser;->a(Lc/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 463
    iput v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 464
    iput v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 466
    iget-object v2, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v2}, Lc/InAppBrowser;->a(Lc/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 467
    iget-object v0, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v0}, Lc/InAppBrowser;->a(Lc/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 468
    iget-object v0, p0, Lc/InAppBrowser$1;->c:Lc/InAppBrowser;

    invoke-static {v0}, Lc/InAppBrowser;->a(Lc/InAppBrowser;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 469
    return-void
.end method
