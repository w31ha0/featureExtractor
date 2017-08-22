.class public Lvpadn/d;
.super Landroid/webkit/WebChromeClient;
.source "CordovaChromeClient.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lvpadn/q;

.field private d:Lvpadn/f;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lvpadn/q;Lvpadn/f;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 56
    const-string v0, "CordovaLog"

    iput-object v0, p0, Lvpadn/d;->a:Ljava/lang/String;

    .line 57
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lvpadn/d;->b:J

    .line 83
    iput-object p1, p0, Lvpadn/d;->c:Lvpadn/q;

    .line 84
    iput-object p2, p0, Lvpadn/d;->d:Lvpadn/f;

    .line 85
    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 361
    iget-object v0, p0, Lvpadn/d;->e:Landroid/view/View;

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lvpadn/d;->d:Lvpadn/f;

    invoke-virtual {v1}, Lvpadn/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 367
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 368
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 369
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lvpadn/d;->d:Lvpadn/f;

    invoke-virtual {v2}, Lvpadn/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 372
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 373
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 374
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    iput-object v0, p0, Lvpadn/d;->e:Landroid/view/View;

    .line 379
    :cond_0
    iget-object v0, p0, Lvpadn/d;->e:Landroid/view/View;

    return-object v0
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lvpadn/d;->a:Ljava/lang/String;

    const-string v1, "%s: Line %d : %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lvpadn/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 5

    .prologue
    .line 290
    iget-object v0, p0, Lvpadn/d;->a:Ljava/lang/String;

    const-string v1, "DroidGap:  onExceededDatabaseQuota estimatedSize: %d  currentQuota: %d  totalUsedQuota: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-wide v0, p0, Lvpadn/d;->b:J

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 296
    iget-object v0, p0, Lvpadn/d;->a:Ljava/lang/String;

    const-string v1, "calling quotaUpdater.updateQuota newQuota: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 339
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 340
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lvpadn/d;->d:Lvpadn/f;

    invoke-virtual {v0}, Lvpadn/f;->g()V

    .line 351
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lvpadn/d;->c:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    const-string v1, "Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 111
    const v1, 0x104000a

    new-instance v2, Lvpadn/d$1;

    invoke-direct {v2, p0, p4}, Lvpadn/d$1;-><init>(Lvpadn/d;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    new-instance v1, Lvpadn/d$2;

    invoke-direct {v1, p0, p4}, Lvpadn/d$2;-><init>(Lvpadn/d;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    new-instance v1, Lvpadn/d$3;

    invoke-direct {v1, p0, p4}, Lvpadn/d$3;-><init>(Lvpadn/d;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 137
    return v3
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lvpadn/d;->c:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 152
    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 154
    const v1, 0x104000a

    new-instance v2, Lvpadn/d$4;

    invoke-direct {v2, p0, p4}, Lvpadn/d$4;-><init>(Lvpadn/d;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    const/high16 v1, 0x1040000

    new-instance v2, Lvpadn/d$5;

    invoke-direct {v2, p0, p4}, Lvpadn/d$5;-><init>(Lvpadn/d;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    new-instance v1, Lvpadn/d$6;

    invoke-direct {v1, p0, p4}, Lvpadn/d$6;-><init>(Lvpadn/d;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    new-instance v1, Lvpadn/d$7;

    invoke-direct {v1, p0, p4}, Lvpadn/d$7;-><init>(Lvpadn/d;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 186
    return v3
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    .line 209
    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/d;->d:Lvpadn/f;

    iget-object v0, v0, Lvpadn/f;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lvpadn/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    move v0, v2

    .line 215
    :goto_0
    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    invoke-virtual {p4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gap:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 221
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v4, p0, Lvpadn/d;->d:Lvpadn/f;

    iget-object v4, v4, Lvpadn/f;->g:Lc/ExposedJsApi;

    invoke-virtual {v4, v1, v3, v0, p3}, Lc/ExposedJsApi;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    return v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 230
    :cond_2
    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    const-string v3, "gap_bridge_mode:"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    iget-object v0, p0, Lvpadn/d;->d:Lvpadn/f;

    iget-object v0, v0, Lvpadn/f;->g:Lc/ExposedJsApi;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lc/ExposedJsApi;->setNativeToJsBridgeMode(I)V

    .line 232
    const-string v0, ""

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_3
    if-eqz v0, :cond_5

    if-eqz p4, :cond_5

    const-string v0, "gap_poll:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    iget-object v0, p0, Lvpadn/d;->d:Lvpadn/f;

    iget-object v0, v0, Lvpadn/f;->g:Lc/ExposedJsApi;

    invoke-virtual {v0}, Lc/ExposedJsApi;->retrieveJsMessages()Ljava/lang/String;

    move-result-object v0

    .line 238
    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :cond_5
    if-eqz p4, :cond_6

    const-string v0, "gap_init:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 243
    const-string v0, "OK"

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lvpadn/d;->c:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lvpadn/d;->c:Lvpadn/q;

    invoke-interface {v4}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 252
    if-eqz p4, :cond_7

    .line 253
    invoke-virtual {v3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_7
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 257
    const v1, 0x104000a

    new-instance v4, Lvpadn/d$8;

    invoke-direct {v4, p0, v3, p5}, Lvpadn/d$8;-><init>(Lvpadn/d;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    const/high16 v1, 0x1040000

    new-instance v3, Lvpadn/d$9;

    invoke-direct {v3, p0, p5}, Lvpadn/d$9;-><init>(Lvpadn/d;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 271
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lvpadn/d;->d:Lvpadn/f;

    invoke-virtual {v0, p1, p2}, Lvpadn/f;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 346
    return-void
.end method
