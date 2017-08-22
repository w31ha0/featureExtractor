.class public Lc/GeoBroker;
.super Lvpadn/r;
.source "GeoBroker.java"


# instance fields
.field private a:Lvpadn/l;

.field private b:Lvpadn/o;

.field private c:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lc/GeoBroker;->a:Lvpadn/l;

    invoke-virtual {v0, p1}, Lvpadn/l;->a(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lc/GeoBroker;->b:Lvpadn/o;

    invoke-virtual {v0, p1}, Lvpadn/o;->a(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private a(Ljava/lang/String;Lvpadn/p;Z)V
    .locals 1

    .prologue
    .line 127
    if-eqz p3, :cond_0

    .line 128
    iget-object v0, p0, Lc/GeoBroker;->a:Lvpadn/l;

    invoke-virtual {v0, p1, p2}, Lvpadn/l;->a(Ljava/lang/String;Lvpadn/p;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lc/GeoBroker;->b:Lvpadn/o;

    invoke-virtual {v0, p1, p2}, Lvpadn/o;->a(Ljava/lang/String;Lvpadn/p;)V

    goto :goto_0
.end method

.method private a(Lvpadn/p;Z)V
    .locals 1

    .prologue
    .line 119
    if-eqz p2, :cond_0

    .line 120
    iget-object v0, p0, Lc/GeoBroker;->a:Lvpadn/l;

    invoke-virtual {v0, p1}, Lvpadn/l;->a(Lvpadn/p;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lc/GeoBroker;->b:Lvpadn/o;

    invoke-virtual {v0, p1}, Lvpadn/o;->a(Lvpadn/p;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    :try_start_0
    iget-object v0, p0, Lc/GeoBroker;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lc/GeoBroker;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lc/GeoBroker;->c:Landroid/location/LocationManager;

    .line 69
    new-instance v0, Lvpadn/o;

    iget-object v3, p0, Lc/GeoBroker;->c:Landroid/location/LocationManager;

    invoke-direct {v0, v3, p0}, Lvpadn/o;-><init>(Landroid/location/LocationManager;Lc/GeoBroker;)V

    iput-object v0, p0, Lc/GeoBroker;->b:Lvpadn/o;

    .line 70
    new-instance v0, Lvpadn/l;

    iget-object v3, p0, Lc/GeoBroker;->c:Landroid/location/LocationManager;

    invoke-direct {v0, v3, p0}, Lvpadn/l;-><init>(Landroid/location/LocationManager;Lc/GeoBroker;)V

    iput-object v0, p0, Lc/GeoBroker;->a:Lvpadn/l;

    .line 73
    :cond_0
    iget-object v0, p0, Lc/GeoBroker;->c:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/GeoBroker;->c:Landroid/location/LocationManager;

    const-string v3, "network"

    .line 74
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    :cond_1
    const-string v0, "getLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 79
    iget-object v5, p0, Lc/GeoBroker;->c:Landroid/location/LocationManager;

    if-eqz v3, :cond_2

    const-string v0, "gps"

    .line 80
    :goto_0
    invoke-virtual {v5, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    int-to-long v4, v4

    cmp-long v4, v6, v4

    if-gtz v4, :cond_3

    .line 85
    new-instance v3, Lvpadn/w;

    sget-object v4, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-virtual {p0, v0}, Lc/GeoBroker;->returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 86
    invoke-virtual {p3, v3}, Lvpadn/p;->a(Lvpadn/w;)V

    :goto_1
    move v0, v1

    .line 109
    :goto_2
    return v0

    .line 79
    :cond_2
    const-string v0, "network"

    goto :goto_0

    .line 88
    :cond_3
    invoke-direct {p0, p3, v3}, Lc/GeoBroker;->a(Lvpadn/p;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "GeoBroker"

    const-string v3, "GeoBroker throws Exception"

    invoke-static {v1, v3, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 109
    goto :goto_2

    .line 90
    :cond_4
    :try_start_1
    const-string v0, "addWatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    .line 93
    invoke-direct {p0, v0, p3, v3}, Lc/GeoBroker;->a(Ljava/lang/String;Lvpadn/p;Z)V

    goto :goto_1

    .line 94
    :cond_5
    const-string v0, "clearWatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-direct {p0, v0}, Lc/GeoBroker;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 98
    goto :goto_2

    .line 101
    :cond_7
    sget-object v0, Lvpadn/w$a;->a:Lvpadn/w$a;

    .line 102
    const-string v3, "Location API is not available for this device."

    .line 103
    new-instance v4, Lvpadn/w;

    invoke-direct {v4, v0, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3, v4}, Lvpadn/p;->a(Lvpadn/w;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public fail(ILjava/lang/String;Lvpadn/p;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 189
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 192
    :try_start_0
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    const-string v2, "message"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    move-object v1, v0

    .line 199
    :goto_0
    if-eqz v2, :cond_0

    .line 200
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-direct {v0, v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 205
    :goto_1
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 206
    return-void

    .line 194
    :catch_0
    move-exception v1

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\'code\':"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'message\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, "\'"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-direct {v0, v2, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isGlobalListener(Lvpadn/e;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Lc/GeoBroker;->a:Lvpadn/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/GeoBroker;->b:Lvpadn/o;

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lc/GeoBroker;->a:Lvpadn/l;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/GeoBroker;->b:Lvpadn/o;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 215
    :cond_1
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lc/GeoBroker;->b:Lvpadn/o;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lc/GeoBroker;->b:Lvpadn/o;

    invoke-virtual {v0}, Lvpadn/o;->b()V

    .line 141
    iput-object v1, p0, Lc/GeoBroker;->b:Lvpadn/o;

    .line 143
    :cond_0
    iget-object v0, p0, Lc/GeoBroker;->a:Lvpadn/l;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lc/GeoBroker;->a:Lvpadn/l;

    invoke-virtual {v0}, Lvpadn/l;->b()V

    .line 145
    iput-object v1, p0, Lc/GeoBroker;->a:Lvpadn/l;

    .line 147
    :cond_1
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0}, Lc/GeoBroker;->onDestroy()V

    .line 155
    return-void
.end method

.method public returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 158
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 161
    :try_start_0
    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 162
    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 163
    const-string v3, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v1, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 165
    const-string v1, "heading"

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v0, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 167
    const-string v0, "timestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    return-object v2

    :cond_1
    move-object v1, v0

    .line 163
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public win(Landroid/location/Location;Lvpadn/p;)V
    .locals 3

    .prologue
    .line 177
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-virtual {p0, p1}, Lc/GeoBroker;->returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 178
    invoke-virtual {p2, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 179
    return-void
.end method
