.class public Lc/InAppBrowser;
.super Lvpadn/r;
.source "InAppBrowser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/InAppBrowser$a;,
        Lc/InAppBrowser$b;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "InAppBrowser"


# instance fields
.field private a:J

.field private b:Landroid/app/Dialog;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/EditText;

.field private e:Z

.field private g:Lvpadn/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 72
    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lc/InAppBrowser;->a:J

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/InAppBrowser;->e:Z

    return-void
.end method

.method static synthetic a(Lc/InAppBrowser;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc/InAppBrowser;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lc/InAppBrowser;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lc/InAppBrowser;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lc/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lc/InAppBrowser;->c:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic a(Lc/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lc/InAppBrowser;->d:Landroid/widget/EditText;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 170
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, ","

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-direct {v0, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v4, "no"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 177
    :goto_2
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 176
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 180
    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 225
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 226
    const-string v1, "type"

    const-string v2, "exit"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc/InAppBrowser;->a(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    iget-object v0, p0, Lc/InAppBrowser;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lc/InAppBrowser;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 236
    :cond_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v0, "InAppBrowser"

    const-string v1, "Should never happen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lc/InAppBrowser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lc/InAppBrowser;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lc/InAppBrowser;Lorg/json/JSONObject;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lc/InAppBrowser;->a(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .locals 2

    .prologue
    .line 482
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 483
    invoke-virtual {v0, p2}, Lvpadn/w;->a(Z)V

    .line 484
    iget-object v1, p0, Lc/InAppBrowser;->g:Lvpadn/p;

    invoke-virtual {v1, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 485
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 191
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/InAppBrowser;->webView:Lvpadn/f;

    invoke-virtual {v1}, Lvpadn/f;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lc/InAppBrowser;->webView:Lvpadn/f;

    invoke-virtual {v3}, Lvpadn/f;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    :cond_0
    return-object p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lc/InAppBrowser;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lc/InAppBrowser;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 245
    :cond_0
    return-void
.end method

.method static synthetic b(Lc/InAppBrowser;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lc/InAppBrowser;->b()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lc/InAppBrowser;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lc/InAppBrowser;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 254
    :cond_0
    return-void
.end method

.method static synthetic c(Lc/InAppBrowser;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lc/InAppBrowser;->c()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 264
    iget-object v1, p0, Lc/InAppBrowser;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 266
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lc/InAppBrowser;->c:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 271
    :goto_0
    iget-object v0, p0, Lc/InAppBrowser;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 272
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lc/InAppBrowser;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lc/InAppBrowser;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc/InAppBrowser;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lc/InAppBrowser;->e:Z

    return v0
.end method

.method static synthetic e(Lc/InAppBrowser;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lc/InAppBrowser;->a()V

    return-void
.end method

.method static synthetic f(Lc/InAppBrowser;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc/InAppBrowser;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lc/InAppBrowser;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lc/InAppBrowser;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lc/InAppBrowser;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lc/InAppBrowser;->a:J

    return-wide v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 92
    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    .line 93
    const-string v0, ""

    .line 94
    iput-object p3, p0, Lc/InAppBrowser;->g:Lvpadn/p;

    .line 97
    :try_start_0
    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "null"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    :cond_0
    const-string v1, "_self"

    .line 103
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lc/InAppBrowser;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 105
    const-string v5, "InAppBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0, v3}, Lc/InAppBrowser;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    const-string v5, "_self"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    const-string v1, "InAppBrowser"

    const-string v5, "in self"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "file://"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "javascript:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v3}, Lvpadn/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    :cond_2
    iget-object v1, p0, Lc/InAppBrowser;->webView:Lvpadn/f;

    invoke-virtual {v1, v3}, Lvpadn/f;->loadUrl(Ljava/lang/String;)V

    :goto_0
    move-object v1, v2

    .line 150
    :goto_1
    new-instance v2, Lvpadn/w;

    invoke-direct {v2, v1, v0}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lvpadn/w;->a(Z)V

    .line 152
    iget-object v0, p0, Lc/InAppBrowser;->g:Lvpadn/p;

    invoke-virtual {v0, v2}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 156
    :goto_2
    return v8

    .line 117
    :cond_3
    const-string v1, "tel:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 121
    iget-object v4, p0, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v4}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    :try_start_2
    const-string v4, "InAppBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dialing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lvpadn/s;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    iget-object v0, p0, Lc/InAppBrowser;->g:Lvpadn/p;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->i:Lvpadn/w$a;

    invoke-direct {v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_2

    .line 128
    :cond_4
    :try_start_3
    invoke-virtual {p0, v3, v4}, Lc/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_5
    const-string v0, "_system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    const-string v0, "InAppBrowser"

    const-string v1, "in system"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0, v3}, Lc/InAppBrowser;->openExternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_6
    const-string v0, "InAppBrowser"

    const-string v1, "in blank"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0, v3, v4}, Lc/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 141
    :cond_7
    const-string v1, "close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 142
    invoke-direct {p0}, Lc/InAppBrowser;->a()V

    .line 144
    new-instance v1, Lvpadn/w;

    sget-object v3, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v1, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 145
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lvpadn/w;->a(Z)V

    .line 146
    iget-object v3, p0, Lc/InAppBrowser;->g:Lvpadn/p;

    invoke-virtual {v3, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    move-object v1, v2

    .line 147
    goto/16 :goto_1

    .line 148
    :cond_8
    sget-object v1, Lvpadn/w$a;->h:Lvpadn/w$a;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public openExternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    .line 210
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 213
    const-string v0, ""
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string v1, "InAppBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InAppBrowser: Error loading url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/InAppBrowser;->e:Z

    .line 293
    if-eqz p2, :cond_0

    .line 294
    const-string v0, "location"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lc/InAppBrowser;->e:Z

    .line 297
    :cond_0
    iget-object v0, p0, Lc/InAppBrowser;->webView:Lvpadn/f;

    .line 300
    new-instance v1, Lc/InAppBrowser$1;

    invoke-direct {v1, p0, p1, v0}, Lc/InAppBrowser$1;-><init>(Lc/InAppBrowser;Ljava/lang/String;Lvpadn/f;)V

    .line 471
    iget-object v0, p0, Lc/InAppBrowser;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 472
    const-string v0, ""

    return-object v0
.end method
