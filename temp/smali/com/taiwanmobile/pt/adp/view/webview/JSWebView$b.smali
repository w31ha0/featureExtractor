.class Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;
.super Ljava/lang/Object;
.source "JSWebView.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/webview/IJSExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    const-string v0, ""

    .line 333
    sparse-switch p1, :sswitch_data_0

    .line 353
    const-string v0, "TWMAdView"

    .line 356
    :goto_0
    return-object v0

    .line 338
    :sswitch_0
    const-string v0, "TWMAdView"

    goto :goto_0

    .line 341
    :sswitch_1
    const-string v0, "TWMInterstitialAd"

    goto :goto_0

    .line 344
    :sswitch_2
    const-string v0, "TWMVideoAd"

    goto :goto_0

    .line 347
    :sswitch_3
    const-string v0, "TWMNativeAd"

    goto :goto_0

    .line 350
    :sswitch_4
    const-string v0, "TWMFloatAdView"

    goto :goto_0

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch
.end method

.method private a()V
    .locals 2

    .prologue
    .line 444
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$3;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$3;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->post(Ljava/lang/Runnable;)Z

    .line 453
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 174
    :cond_0
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 462
    const-string v1, "adListener"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 463
    const-string v1, "adListener"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 464
    const-string v2, "ad"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taiwanmobile/pt/adp/view/TWMAd;

    move-object v3, v1

    .line 470
    :goto_0
    const-string v1, "adType"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 471
    const-string v1, "adType"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 472
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 473
    const-string v4, "JSWebViewExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adType : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sparse-switch v1, :sswitch_data_0

    .line 500
    :cond_0
    :goto_1
    return-void

    .line 481
    :sswitch_0
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 482
    invoke-interface {v3, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onPresentScreen(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 483
    invoke-interface {v3, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onLeaveApplication(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 484
    const-string v1, "lam"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 489
    :sswitch_1
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 490
    invoke-interface {v3, v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onLeaveApplication(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    goto :goto_1

    .line 497
    :cond_1
    const-string v1, "JSWebViewExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adType is null ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "adType"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v3, v2

    goto :goto_0

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public addCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 251
    const-string v0, "JSWebViewExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addcalendar invoked("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy/MM/dd HH:mm"

    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-direct {v2, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 260
    :try_start_0
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 261
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 265
    :goto_0
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 268
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 273
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v3, "title"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v3, "eventLocation"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v3, "description"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v3, "beginTime"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 279
    const-string v2, "endTime"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 282
    const-string v0, "accessLevel"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v0, "availability"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 286
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->b()V

    .line 287
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    :cond_1
    :goto_1
    return-void

    .line 289
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 290
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v2, "\ufffd\uef9b\ufffd\ufffd\uf115\ufffd\uecc9\u852d\u929d\u866b\ufffd\uf698\ue70c\ufffd\ue400\ufffd\uebf1\ufffd\ufffd\uf1b0\ufffd\uf697\ufffd\ufffd!!"

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 292
    const-string v0, "JSWebViewExecutor"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 293
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 294
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v2, "\ufffd\uef9b\ufffd\ufffd\uf115\ufffd\uecc9\u852d\u929d\u866b\ufffd\uf698\ue70c\ufffd\ue400\ufffd\uebf1\ufffd\ufffd\uf1b0\ufffd\uf697\ufffd\ufffd!!"

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    const-string v0, "JSWebViewExecutor"

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :catch_2
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method

.method public audioSwitch(I)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 600
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 601
    const-string v1, "JSWebViewExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "audioSwitch("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    packed-switch p1, :pswitch_data_0

    .line 614
    :goto_0
    return-void

    .line 605
    :pswitch_0
    const-string v1, "JSWebViewExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentVol(AUDIO_SOUND) :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0

    .line 609
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->b:I

    .line 610
    const-string v1, "JSWebViewExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentVol(AUDIO_MUTE) :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0

    .line 603
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public captureThumbnail()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    const-string v0, "capturePhoto"

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->captureThumbnail(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public captureThumbnail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 159
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "captureThumbnail("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v0, "elementId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 163
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    const v2, 0x1080037

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 166
    :cond_0
    return-void
.end method

.method public clickAd()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 437
    const-string v0, "JSWebViewExecutor"

    const-string v1, "clickAd() invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->h(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a()V

    .line 440
    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->openUrl(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public clickInterstitial()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->clickAd()V

    .line 432
    return-void
.end method

.method public closeWebView()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 515
    const-string v0, "JSWebViewExecutor"

    const-string v1, "closeWebView invoked!!)"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseCamera()V

    .line 517
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseMic()V

    .line 518
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseProximity()V

    .line 519
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;->closeWebView(Ljava/lang/String;)V

    .line 522
    :cond_0
    return-void
.end method

.method public countProximityWithinTime(F)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 802
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "countProximityWithinTime("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoke !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-direct {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$a;->start()V

    .line 806
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 807
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$6;

    invoke-direct {v3, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$6;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 824
    :goto_0
    return-void

    .line 816
    :cond_0
    const-string v0, "JSWebViewExecutor"

    const-string v1, "countProximityWithinTime result: Fail, open proximity failed! "

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$7;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$7;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public disableCloseButton()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 506
    const-string v0, "JSWebViewExecutor"

    const-string v1, "disableCloseButton invoked!!)"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;->disableCloseButton()V

    .line 510
    :cond_0
    return-void
.end method

.method public displayAd()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    const-string v0, "JSWebViewExecutor"

    const-string v1, "displayAd invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 412
    if-eqz v0, :cond_0

    .line 413
    const-string v1, "adunitId"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->reportDisplayAd(Landroid/content/Context;Ljava/lang/String;)V

    .line 418
    :cond_0
    return-void
.end method

.method public extraClickAd(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 527
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleExtraClick("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 532
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 533
    const/4 v0, 0x1

    .line 534
    const-string v1, "adType"

    invoke-virtual {v6, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 535
    const-string v0, "adType"

    invoke-virtual {v6, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 536
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 538
    :cond_0
    invoke-direct {p0, v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 540
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 541
    :cond_1
    const-string v5, "main"

    .line 544
    :goto_0
    invoke-virtual {v6, v5}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 545
    if-nez v0, :cond_3

    .line 546
    const-string v4, "2"

    .line 547
    const-string v0, "clickUrl"

    invoke-virtual {v6, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 550
    const-string v0, "main"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    const-string v4, "1"

    .line 553
    :cond_2
    const-string v0, "JSWebViewExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "reportClick position: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->reportClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    :cond_3
    return-void

    :cond_4
    move-object v5, p1

    goto :goto_0
.end method

.method public flashEffect(FI)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 636
    const-string v0, "JSWebViewExecutor"

    const-string v1, "flashEffect invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->j(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->k(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    move-result-object v0

    if-nez v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-direct {v1, p1, p2, v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;-><init>(FILcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;)V

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->k(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->d:Z

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->k(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$e;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public flashSwitch(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 620
    const-string v0, "JSWebViewExecutor"

    const-string v1, "flashSwitch invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 623
    const-string v0, "JSWebViewExecutor"

    const-string v1, "bad input"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->j(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0, p1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;I)V

    goto :goto_0
.end method

.method public floatDisplay(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 699
    const-string v0, "JSWebViewExecutor"

    const-string v1, "floatDisplay invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 702
    packed-switch p1, :pswitch_data_0

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 706
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.taiwanmobile.pt.adp.view.TWMFloatAdView"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    const-string v0, "data"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAdFormat()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    const-string v0, "JSWebViewExecutor"

    const-string v1, "getAdFormat invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 324
    const-string v1, "adSize"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 325
    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdSize;->getTWMAdSizeConstantString()Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-1"

    goto :goto_0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 307
    const-string v0, "JSWebViewExecutor"

    const-string v1, "getAdType invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 310
    const-string v1, "adType"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 311
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "-1"

    goto :goto_0
.end method

.method public getFloatInfo()Ljava/lang/String;
    .locals 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 720
    const-string v0, "JSWebViewExecutor"

    const-string v1, "getFloatInfo invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v5, "\"floatPosition\""

    .line 722
    const-string v6, "\"floatType\""

    .line 723
    const-string v0, ""

    .line 724
    const-string v2, ""

    .line 725
    const-string v7, "\"direction\""

    .line 726
    const-string v3, "0"

    .line 728
    const-string/jumbo v8, "{"

    .line 729
    const-string/jumbo v9, "}"

    .line 730
    const-string v10, ":"

    .line 731
    const-string v11, ","

    .line 733
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 734
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->i(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;

    move-result-object v0

    invoke-interface {v0}, Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;->checkFloatAdPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 737
    :goto_0
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v12, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v12}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->g(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 739
    const-string v2, "floatType"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v4

    .line 749
    :goto_1
    if-eq v0, v4, :cond_3

    .line 750
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 753
    :goto_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 754
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 755
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 756
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 757
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 758
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    const-string v0, "JSWebViewExecutor"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 142
    const-string v0, "JSWebViewExecutor"

    const-string v1, "getSdkVersion"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "50"

    return-object v0
.end method

.method public isOverDecibel(FI)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 684
    const-string v0, "JSWebViewExecutor"

    const-string v1, "isOverDecibel invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    if-lez p2, :cond_0

    .line 688
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;FI)V

    .line 692
    :cond_0
    return-void
.end method

.method public maxDecibel(F)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 668
    const-string v0, "JSWebViewExecutor"

    const-string v1, "maxDecibel invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->c(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;FI)V

    .line 679
    :cond_0
    return-void
.end method

.method public microphoneSwitch(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 657
    const-string v0, "JSWebViewExecutor"

    const-string v1, "microphoneSwitch invoked"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    if-nez p1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->releaseMic()V

    .line 663
    :cond_0
    return-void
.end method

.method public noticePlay()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    const-string v0, "JSWebViewExecutor"

    const-string v1, "noticePlay invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$2;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$2;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    const-string v1, "javascript:try{autoplay(\'video\');}catch(e){}"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public noticePlay(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    const-string v0, "video"

    invoke-virtual {p0, v0, p1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->noticePlay(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public noticePlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 179
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "noticePlay("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0, p1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->a(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 184
    const-string v1, "kbnpm"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 186
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const-string v1, "kbnpm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    .line 197
    invoke-direct {p0, p2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a(Ljava/lang/String;)V

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:try{autoplay(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');}catch(e){}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v0, "JSWebViewExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "urlStr : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$1;

    invoke-direct {v2, p0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$1;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 423
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openUrl("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->b()V

    .line 425
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0, p1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->b(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public reportVideoProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 567
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportVideoProgress("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 572
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 576
    mul-int/lit16 v5, v0, 0x3e8

    .line 581
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportVideoProgress("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "http://agent.tamedia.com.tw/rmadp/g/adv"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->e(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/String;

    move-result-object v2

    .line 583
    const-string v3, "I"

    move-object v4, p1

    .line 582
    invoke-static/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->reportVideoProgress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public requestProximityWithTimeAndTouches(FI)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 775
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestProximityWithTimeAndTouches("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoke !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->l(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-direct {v0, v1, p2}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;I)V

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$d;->start()V

    .line 779
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    .line 780
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$4;

    invoke-direct {v3, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$4;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 797
    :goto_0
    return-void

    .line 789
    :cond_0
    const-string v0, "JSWebViewExecutor"

    const-string v1, "requestProximityWithTimeAndTouches result: Fail, open proximity failed! "

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$5;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b$5;-><init>(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 590
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRequestedOrientation("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->d(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 593
    return-void
.end method

.method public vibrate(J)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 365
    const-string v0, "JSWebViewExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vibration -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 370
    if-eqz v0, :cond_1

    .line 371
    const-string v0, "JSWebViewExecutor"

    const-string v1, "no vibration permission granted!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 375
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    const-string v1, "JSWebViewExecutor"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public vibrate2([J)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 387
    const-string v0, "JSWebViewExecutor"

    const-string v1, "vibration2 -- invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 391
    if-eqz v0, :cond_1

    .line 392
    const-string v0, "JSWebViewExecutor"

    const-string v1, "no vibration permission granted!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView$b;->a:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->f(Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 396
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const-string v1, "JSWebViewExecutor"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
