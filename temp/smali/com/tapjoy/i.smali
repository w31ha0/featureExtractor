.class final Lcom/tapjoy/i;
.super Landroid/os/AsyncTask;
.source "TapjoyFeaturedAppWebView.java"


# instance fields
.field private synthetic a:Lcom/tapjoy/TapjoyFeaturedAppWebView;


# direct methods
.method synthetic constructor <init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/i;-><init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/TapjoyFeaturedAppWebView;B)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tapjoy/i;->a:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static varargs a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 97
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/tapjoy/i;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tapjoy/i;->a:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->a(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/i;->a:Lcom/tapjoy/TapjoyFeaturedAppWebView;

    invoke-static {v0}, Lcom/tapjoy/TapjoyFeaturedAppWebView;->a(Lcom/tapjoy/TapjoyFeaturedAppWebView;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:window.onorientationchange();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
