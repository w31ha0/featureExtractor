.class public Lcom/adbert/AdbertInterstitialActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertInterstitialActivity;


# direct methods
.method public constructor <init>(Lcom/adbert/AdbertInterstitialActivity;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 428
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/adbert/AdbertInterstitialActivity$a$1;

    invoke-direct {v2, p0, p4}, Lcom/adbert/AdbertInterstitialActivity$a$1;-><init>(Lcom/adbert/AdbertInterstitialActivity$a;Landroid/webkit/JsResult;)V

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 434
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->h(Lcom/adbert/AdbertInterstitialActivity;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialActivity;->h(Lcom/adbert/AdbertInterstitialActivity;)Landroid/webkit/ValueCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v0, p2}, Lcom/adbert/AdbertInterstitialActivity;->a(Lcom/adbert/AdbertInterstitialActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 384
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    const-string v2, "android.permission.CAMERA"

    .line 385
    invoke-static {v0, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 387
    invoke-static {v0, v2}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-virtual {v2}, Lcom/adbert/AdbertInterstitialActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 394
    :try_start_0
    iget-object v2, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-virtual {v2}, Lcom/adbert/AdbertInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/adbert/a/g;->a(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 395
    :try_start_1
    const-string v2, "PhotoPath"

    iget-object v4, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-static {v4}, Lcom/adbert/AdbertInterstitialActivity;->i(Lcom/adbert/AdbertInterstitialActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    :goto_0
    if-eqz v3, :cond_2

    .line 402
    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adbert/AdbertInterstitialActivity;->c(Lcom/adbert/AdbertInterstitialActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    const-string v1, "output"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 407
    :goto_1
    iget-object v1, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-virtual {v1, v0, v5}, Lcom/adbert/AdbertInterstitialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 422
    :cond_1
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 396
    :catch_0
    move-exception v2

    move-object v3, v1

    .line 398
    :goto_3
    invoke-static {v2}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 405
    goto :goto_1

    .line 409
    :cond_3
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/adbert/a/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/Intent;

    .line 416
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHOOSER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 418
    const-string v0, "android.intent.extra.TITLE"

    const-string v3, "Image Chooser"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 420
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialActivity$a;->a:Lcom/adbert/AdbertInterstitialActivity;

    invoke-virtual {v0, v2, v5}, Lcom/adbert/AdbertInterstitialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 396
    :catch_1
    move-exception v2

    goto :goto_3
.end method
