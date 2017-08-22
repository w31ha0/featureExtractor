.class public Lc/App;
.super Lvpadn/r;
.source "App.java"


# static fields
.field public static final LT:Ljava/lang/String; = "App"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    return-void
.end method


# virtual methods
.method public backHistory()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lc/App;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lc/App$3;

    invoke-direct {v1, p0}, Lc/App$3;-><init>(Lc/App;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lc/App;->webView:Lvpadn/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/f;->clearCache(Z)V

    .line 115
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc/App;->webView:Lvpadn/f;

    invoke-virtual {v0}, Lvpadn/f;->clearHistory()V

    .line 182
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    .line 52
    const-string v3, ""

    .line 55
    :try_start_0
    const-string v4, "clearCache"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {p0}, Lc/App;->clearCache()V

    .line 98
    :cond_0
    :goto_0
    new-instance v4, Lvpadn/w;

    invoke-direct {v4, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 102
    :goto_1
    return v0

    .line 58
    :cond_1
    const-string v4, "show"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    iget-object v4, p0, Lc/App;->cordova:Lvpadn/q;

    invoke-interface {v4}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 63
    iget-object v4, p0, Lc/App;->cordova:Lvpadn/q;

    invoke-interface {v4}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lc/App$1;

    invoke-direct {v5, p0}, Lc/App$1;-><init>(Lc/App;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v0, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->i:Lvpadn/w$a;

    invoke-direct {v0, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    move v0, v1

    .line 102
    goto :goto_1

    .line 69
    :cond_2
    :try_start_1
    const-string v4, "App"

    const-string v5, "cordova.getActivity() = null when executing action.equals(\"show\") in execute(...) method."

    invoke-static {v4, v5}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lc/App;->cordova:Lvpadn/q;

    invoke-interface {v5}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lc/App$2;

    invoke-direct {v5, p0}, Lc/App$2;-><init>(Lc/App;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 77
    :cond_3
    const-string v4, "loadUrl"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lc/App;->loadUrl(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 80
    :cond_4
    const-string v4, "cancelLoadUrl"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    const-string v4, "clearHistory"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 84
    invoke-virtual {p0}, Lc/App;->clearHistory()V

    goto :goto_0

    .line 86
    :cond_5
    const-string v4, "backHistory"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 87
    invoke-virtual {p0}, Lc/App;->backHistory()V

    goto/16 :goto_0

    .line 89
    :cond_6
    const-string v4, "overrideButton"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 90
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lc/App;->overrideButton(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 92
    :cond_7
    const-string v4, "overrideBackbutton"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 93
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    invoke-virtual {p0, v4}, Lc/App;->overrideBackbutton(Z)V

    goto/16 :goto_0

    .line 95
    :cond_8
    const-string v4, "exitApp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {p0}, Lc/App;->exitApp()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public exitApp()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lc/App;->webView:Lvpadn/f;

    const-string v1, "exit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public isBackbuttonOverridden()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lc/App;->webView:Lvpadn/f;

    invoke-virtual {v0}, Lvpadn/f;->c()Z

    move-result v0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    const-string v1, "App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App.loadUrl("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 132
    if-eqz p2, :cond_6

    .line 133
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    .line 134
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 135
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 136
    const-string v0, "wait"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 134
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_1
    const-string v0, "openexternal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 142
    :cond_2
    const-string v0, "clearhistory"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 151
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 154
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 156
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 157
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move v2, v0

    move v3, v0

    move v4, v0

    .line 165
    :cond_7
    if-lez v4, :cond_8

    .line 167
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    int-to-long v0, v4

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 169
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_8
    :goto_2
    iget-object v0, p0, Lc/App;->webView:Lvpadn/f;

    invoke-virtual {v0, p1, v3, v2, v5}, Lvpadn/f;->a(Ljava/lang/String;ZZLjava/util/HashMap;)V

    .line 175
    return-void

    .line 169
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public overrideBackbutton(Z)V
    .locals 2

    .prologue
    .line 203
    const-string v0, "App"

    const-string v1, "WARNING: Back Button Default Behaviour will be overridden.  The backbutton event will be fired!"

    invoke-static {v0, v1}, Lvpadn/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lc/App;->webView:Lvpadn/f;

    invoke-virtual {v0, p1}, Lvpadn/f;->a(Z)V

    .line 205
    return-void
.end method

.method public overrideButton(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 215
    const-string v0, "DroidGap"

    const-string v1, "WARNING: Volume Button Default Behaviour will be overridden.  The volume event will be fired!"

    invoke-static {v0, v1}, Lvpadn/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lc/App;->webView:Lvpadn/f;

    invoke-virtual {v0, p1, p2}, Lvpadn/f;->a(Ljava/lang/String;Z)V

    .line 217
    return-void
.end method
