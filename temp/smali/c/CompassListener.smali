.class public Lc/CompassListener;
.super Lvpadn/r;
.source "CompassListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static ERROR_FAILED_TO_START:I

.field public static RUNNING:I

.field public static STARTING:I

.field public static STOPPED:I


# instance fields
.field public TIMEOUT:J

.field a:I

.field b:F

.field c:J

.field d:J

.field e:Landroid/hardware/Sensor;

.field private g:Landroid/hardware/SensorManager;

.field private h:Lvpadn/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lc/CompassListener;->STOPPED:I

    .line 46
    const/4 v0, 0x1

    sput v0, Lc/CompassListener;->STARTING:I

    .line 47
    const/4 v0, 0x2

    sput v0, Lc/CompassListener;->RUNNING:I

    .line 48
    const/4 v0, 0x3

    sput v0, Lc/CompassListener;->ERROR_FAILED_TO_START:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 50
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lc/CompassListener;->TIMEOUT:J

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lc/CompassListener;->b:F

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/CompassListener;->c:J

    .line 69
    sget v0, Lc/CompassListener;->STOPPED:I

    invoke-direct {p0, v0}, Lc/CompassListener;->a(I)V

    .line 70
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lc/CompassListener;->a:I

    sget v1, Lc/CompassListener;->STARTING:I

    if-ne v0, v1, :cond_0

    .line 204
    sget v0, Lc/CompassListener;->ERROR_FAILED_TO_START:I

    invoke-direct {p0, v0}, Lc/CompassListener;->a(I)V

    .line 205
    iget-object v0, p0, Lc/CompassListener;->h:Lvpadn/p;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lc/CompassListener;->h:Lvpadn/p;

    const-string v1, "Compass listener failed to start."

    invoke-virtual {v0, v1}, Lvpadn/p;->b(Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 274
    iput p1, p0, Lc/CompassListener;->a:I

    .line 275
    return-void
.end method

.method static synthetic a(Lc/CompassListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lc/CompassListener;->a()V

    return-void
.end method

.method private b()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 285
    const-string v1, "magneticHeading"

    invoke-virtual {p0}, Lc/CompassListener;->getHeading()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 286
    const-string v1, "trueHeading"

    invoke-virtual {p0}, Lc/CompassListener;->getHeading()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 289
    const-string v1, "headingAccuracy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 290
    const-string v1, "timestamp"

    iget-wide v2, p0, Lc/CompassListener;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 292
    return-object v0
.end method


# virtual methods
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

    .line 94
    const-string v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lc/CompassListener;->start()I

    .line 132
    :goto_0
    return v0

    .line 97
    :cond_0
    const-string v2, "stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p0}, Lc/CompassListener;->stop()V

    goto :goto_0

    .line 100
    :cond_1
    const-string v2, "getStatus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {p0}, Lc/CompassListener;->getStatus()I

    move-result v1

    .line 102
    new-instance v2, Lvpadn/w;

    sget-object v3, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v2, v3, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;I)V

    invoke-virtual {p3, v2}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_0

    .line 104
    :cond_2
    const-string v2, "getHeading"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    iget v1, p0, Lc/CompassListener;->a:I

    sget v2, Lc/CompassListener;->RUNNING:I

    if-eq v1, v2, :cond_4

    .line 107
    invoke-virtual {p0}, Lc/CompassListener;->start()I

    move-result v1

    .line 108
    sget v2, Lc/CompassListener;->ERROR_FAILED_TO_START:I

    if-ne v1, v2, :cond_3

    .line 109
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->g:Lvpadn/w$a;

    sget v3, Lc/CompassListener;->ERROR_FAILED_TO_START:I

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;I)V

    invoke-virtual {p3, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_0

    .line 113
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    new-instance v2, Lc/CompassListener$1;

    invoke-direct {v2, p0}, Lc/CompassListener$1;-><init>(Lc/CompassListener;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_4
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {p0}, Lc/CompassListener;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {p3, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_0

    .line 122
    :cond_5
    const-string v2, "setTimeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lc/CompassListener;->setTimeout(J)V

    goto :goto_0

    .line 125
    :cond_6
    const-string v2, "getTimeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 126
    invoke-virtual {p0}, Lc/CompassListener;->getTimeout()J

    move-result-wide v2

    .line 127
    new-instance v1, Lvpadn/w;

    sget-object v4, Lvpadn/w$a;->b:Lvpadn/w$a;

    long-to-float v2, v2

    invoke-direct {v1, v4, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;F)V

    invoke-virtual {p3, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 130
    goto/16 :goto_0
.end method

.method public getHeading()F
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/CompassListener;->d:J

    .line 248
    iget v0, p0, Lc/CompassListener;->b:F

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lc/CompassListener;->a:I

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lc/CompassListener;->TIMEOUT:J

    return-wide v0
.end method

.method public initialize(Lvpadn/q;Lvpadn/f;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lvpadn/r;->initialize(Lvpadn/q;Lvpadn/f;)V

    .line 81
    invoke-interface {p1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lc/CompassListener;->g:Landroid/hardware/SensorManager;

    .line 82
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lc/CompassListener;->stop()V

    .line 140
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lc/CompassListener;->stop()V

    .line 147
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc/CompassListener;->c:J

    .line 223
    iput v0, p0, Lc/CompassListener;->b:F

    .line 224
    sget v0, Lc/CompassListener;->RUNNING:I

    invoke-direct {p0, v0}, Lc/CompassListener;->a(I)V

    .line 227
    iget-wide v0, p0, Lc/CompassListener;->c:J

    iget-wide v2, p0, Lc/CompassListener;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lc/CompassListener;->TIMEOUT:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lc/CompassListener;->stop()V

    .line 230
    :cond_0
    return-void
.end method

.method public setTimeout(J)V
    .locals 1

    .prologue
    .line 257
    iput-wide p1, p0, Lc/CompassListener;->TIMEOUT:J

    .line 258
    return-void
.end method

.method public start()I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 161
    iget v0, p0, Lc/CompassListener;->a:I

    sget v1, Lc/CompassListener;->RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lc/CompassListener;->a:I

    sget v1, Lc/CompassListener;->STARTING:I

    if-ne v0, v1, :cond_1

    .line 162
    :cond_0
    iget v0, p0, Lc/CompassListener;->a:I

    .line 182
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v0, p0, Lc/CompassListener;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 171
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iput-object v0, p0, Lc/CompassListener;->e:Landroid/hardware/Sensor;

    .line 172
    iget-object v0, p0, Lc/CompassListener;->g:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc/CompassListener;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/CompassListener;->d:J

    .line 174
    sget v0, Lc/CompassListener;->STARTING:I

    invoke-direct {p0, v0}, Lc/CompassListener;->a(I)V

    .line 182
    :goto_1
    iget v0, p0, Lc/CompassListener;->a:I

    goto :goto_0

    .line 179
    :cond_2
    sget v0, Lc/CompassListener;->ERROR_FAILED_TO_START:I

    invoke-direct {p0, v0}, Lc/CompassListener;->a(I)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lc/CompassListener;->a:I

    sget v1, Lc/CompassListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lc/CompassListener;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 192
    :cond_0
    sget v0, Lc/CompassListener;->STOPPED:I

    invoke-direct {p0, v0}, Lc/CompassListener;->a(I)V

    .line 193
    return-void
.end method
