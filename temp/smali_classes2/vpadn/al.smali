.class public Lvpadn/al;
.super Landroid/os/AsyncTask;
.source "VponEnvWiFiDetectionAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Lvpadn/aj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object v0, p0, Lvpadn/al;->a:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lvpadn/al;->b:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lvpadn/al;->c:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lvpadn/al;->d:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lvpadn/al;->c:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lvpadn/al;->d:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lvpadn/al;->a:Landroid/content/Context;

    .line 41
    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lvpadn/al;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 137
    if-nez p2, :cond_1

    .line 138
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    :goto_0
    :try_start_1
    invoke-static {p1}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v1

    invoke-virtual {v1}, Lvpadn/bo;->b()Landroid/location/Location;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    .line 143
    const-string v2, "lat"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 144
    const-string v2, "lon"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 145
    const-string v2, "loc_acc"

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 146
    const-string v2, "latlon_age"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 154
    :goto_1
    return-object v0

    .line 148
    :cond_0
    const-string v1, "VponEnvWiFiDetectionAsyncTask"

    const-string v2, "VponLocation.instance(context).getLocation() return null"

    invoke-static {v1, v2}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v1

    .line 151
    :goto_2
    const-string v2, "VponEnvWiFiDetectionAsyncTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addLatLonLocation throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 150
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_2

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method private a()Lvpadn/aj;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 87
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lvpadn/al;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 89
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 90
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 91
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 92
    const-string v1, "User-Agent"

    iget-object v2, p0, Lvpadn/al;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 97
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 100
    iget-object v3, p0, Lvpadn/al;->a:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lvpadn/al;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 102
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 103
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 104
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 106
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 107
    const/4 v0, -0x1

    invoke-static {v0}, Lvpadn/aj;->a(I)Lvpadn/aj;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lvpadn/aj;->a(I)Lvpadn/aj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "VponEnvWiFiDetectionAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send HttpPost scan wifi url return Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {v5}, Lvpadn/aj;->a(I)Lvpadn/aj;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lvpadn/au;->e(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 159
    if-nez p2, :cond_0

    .line 160
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    :try_start_1
    invoke-static {p1}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v1

    .line 164
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 165
    const-string v3, "wifi_ssid"

    invoke-virtual {v1}, Lvpadn/bs;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v3, "wifi_bssid"

    invoke-virtual {v1}, Lvpadn/bs;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v3, "wifi_level"

    invoke-virtual {v1}, Lvpadn/bs;->g()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    const-string v3, "wifi_raw_level"

    invoke-virtual {v1}, Lvpadn/bs;->h()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    const-string v1, "active"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :goto_1
    return-object v0

    .line 171
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    .line 172
    :goto_2
    const-string v2, "VponEnvWiFiDetectionAsyncTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCurrentConnectedWifi throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 171
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 180
    if-nez p2, :cond_1

    .line 181
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :goto_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v0, p0, Lvpadn/al;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 186
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 188
    const-string v1, "wifi_ssid"

    const-string v6, "wifi_ssid"

    .line 189
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 188
    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v1, "wifi_bssid"

    const-string v6, "wifi_bssid"

    .line 191
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 190
    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v6, "wifi_level"

    const-string v1, "wifi_level"

    .line 193
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 192
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    const-string v1, "wifi_raw_level"

    const-string v6, "wifi_raw_level"

    .line 195
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 194
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 204
    :goto_2
    const-string v2, "VponEnvWiFiDetectionAsyncTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNearbyEnvironmentWifi throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :goto_3
    return-object v0

    .line 200
    :cond_0
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 202
    const-string v1, "nearby"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    .line 205
    goto :goto_3

    .line 203
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    goto :goto_2

    :cond_1
    move-object v2, p2

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    const-string v0, "NH/mLeyCBfokzYKUPNGEEg=="

    .line 121
    invoke-direct {p0, p1}, Lvpadn/al;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 122
    invoke-direct {p0, p1, v1}, Lvpadn/al;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 123
    invoke-direct {p0, p1, v1}, Lvpadn/al;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 124
    invoke-direct {p0, p1, v1}, Lvpadn/al;->c(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method protected varargs a([Ljava/lang/Object;)Lvpadn/aj;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lvpadn/al;->a()Lvpadn/aj;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lvpadn/aj;)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lvpadn/al$1;->a:[I

    invoke-virtual {p1}, Lvpadn/aj;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 61
    const-string v0, "VponEnvWiFiDetectionAsyncTask"

    const-string v1, "[wireless] send environment wifi detection information, Fail."

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 57
    :pswitch_0
    const-string v0, "VponEnvWiFiDetectionAsyncTask"

    const-string v1, "[wireless] send environment wifi detection information, Success."

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lvpadn/al;->a([Ljava/lang/Object;)Lvpadn/aj;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lvpadn/al;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    .line 70
    sget-object v1, Lvpadn/al$1;->b:[I

    invoke-virtual {v0}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const-string v0, "VponEnvWiFiDetectionAsyncTask"

    const-string v1, "onCancelled() PENDING"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :pswitch_1
    const-string v0, "VponEnvWiFiDetectionAsyncTask"

    const-string v1, "onCancelled() FINISHED"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v0, "VponEnvWiFiDetectionAsyncTask"

    const-string v1, "onCancelled() RUNNING"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lvpadn/aj;

    invoke-virtual {p0, p1}, Lvpadn/al;->a(Lvpadn/aj;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
