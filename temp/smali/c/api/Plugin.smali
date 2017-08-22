.class public abstract Lc/api/Plugin;
.super Lvpadn/r;
.source "Plugin.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public ctx:Lvpadn/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lc/api/Plugin;->webView:Lvpadn/f;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-direct {v1, v2, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public error(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lc/api/Plugin;->webView:Lvpadn/f;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-direct {v1, v2, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1, p2}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public error(Lvpadn/w;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lc/api/Plugin;->webView:Lvpadn/f;

    invoke-virtual {v0, p1, p2}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public abstract execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lvpadn/w;
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p3}, Lvpadn/p;->b()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p0, p1}, Lc/api/Plugin;->isSynch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 73
    :goto_0
    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lc/api/Plugin;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lc/api/Plugin$1;

    invoke-direct {v3, p0, p1, p2, v2}, Lc/api/Plugin$1;-><init>(Lc/api/Plugin;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 96
    :goto_1
    return v1

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0, p1, p2, v2}, Lc/api/Plugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lvpadn/w;

    move-result-object v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    new-instance v0, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->a:Lvpadn/w$a;

    invoke-direct {v0, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 94
    :cond_2
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_1
.end method

.method public initialize(Lvpadn/q;Lvpadn/f;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lvpadn/r;->initialize(Lvpadn/q;Lvpadn/f;)V

    .line 44
    invoke-virtual {p0, p1}, Lc/api/Plugin;->setContext(Lvpadn/q;)V

    .line 45
    invoke-virtual {p0, p2}, Lc/api/Plugin;->setView(Lvpadn/f;)V

    .line 46
    return-void
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lc/api/Plugin;->webView:Lvpadn/f;

    invoke-virtual {v0, p1}, Lvpadn/f;->d(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public sendPluginResult(Lvpadn/w;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc/api/Plugin;->webView:Lvpadn/f;

    invoke-virtual {v0, p1, p2}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setContext(Lvpadn/q;)V
    .locals 2

    .prologue
    .line 55
    iput-object p1, p0, Lc/api/Plugin;->cordova:Lvpadn/q;

    .line 56
    new-instance v0, Lvpadn/t;

    iget-object v1, p0, Lc/api/Plugin;->cordova:Lvpadn/q;

    invoke-direct {v0, v1}, Lvpadn/t;-><init>(Lvpadn/q;)V

    iput-object v0, p0, Lc/api/Plugin;->ctx:Lvpadn/t;

    .line 57
    return-void
.end method

.method public setView(Lvpadn/f;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lc/api/Plugin;->webView:Lvpadn/f;

    .line 67
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lc/api/Plugin;->webView:Lvpadn/f;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v1, v2, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public success(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lc/api/Plugin;->webView:Lvpadn/f;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v1, v2, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1, p2}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public success(Lvpadn/w;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lc/api/Plugin;->webView:Lvpadn/f;

    invoke-virtual {v0, p1, p2}, Lvpadn/f;->a(Lvpadn/w;Ljava/lang/String;)V

    .line 126
    return-void
.end method
