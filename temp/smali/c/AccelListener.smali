.class public Lc/AccelListener;
.super Lvpadn/r;
.source "AccelListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static ERROR_FAILED_TO_START:I

.field public static RUNNING:I

.field public static STARTING:I

.field public static STOPPED:I


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:J

.field private e:I

.field private g:I

.field private h:Landroid/hardware/SensorManager;

.field private i:Landroid/hardware/Sensor;

.field private j:Lvpadn/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lc/AccelListener;->STOPPED:I

    .line 47
    const/4 v0, 0x1

    sput v0, Lc/AccelListener;->STARTING:I

    .line 48
    const/4 v0, 0x2

    sput v0, Lc/AccelListener;->RUNNING:I

    .line 49
    const/4 v0, 0x3

    sput v0, Lc/AccelListener;->ERROR_FAILED_TO_START:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lc/AccelListener;->g:I

    .line 65
    iput v1, p0, Lc/AccelListener;->a:F

    .line 66
    iput v1, p0, Lc/AccelListener;->b:F

    .line 67
    iput v1, p0, Lc/AccelListener;->c:F

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/AccelListener;->d:J

    .line 69
    sget v0, Lc/AccelListener;->STOPPED:I

    invoke-direct {p0, v0}, Lc/AccelListener;->a(I)V

    .line 70
    return-void
.end method

.method private a()I
    .locals 4

    .prologue
    .line 136
    iget v0, p0, Lc/AccelListener;->e:I

    sget v1, Lc/AccelListener;->RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lc/AccelListener;->e:I

    sget v1, Lc/AccelListener;->STARTING:I

    if-ne v0, v1, :cond_1

    .line 137
    :cond_0
    iget v0, p0, Lc/AccelListener;->e:I

    .line 164
    :goto_0
    return v0

    .line 140
    :cond_1
    sget v0, Lc/AccelListener;->STARTING:I

    invoke-direct {p0, v0}, Lc/AccelListener;->a(I)V

    .line 143
    iget-object v0, p0, Lc/AccelListener;->h:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 147
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iput-object v0, p0, Lc/AccelListener;->i:Landroid/hardware/Sensor;

    .line 148
    iget-object v0, p0, Lc/AccelListener;->h:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lc/AccelListener;->i:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 149
    sget v0, Lc/AccelListener;->STARTING:I

    invoke-direct {p0, v0}, Lc/AccelListener;->a(I)V

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 158
    new-instance v1, Lc/AccelListener$1;

    invoke-direct {v1, p0}, Lc/AccelListener$1;-><init>(Lc/AccelListener;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    iget v0, p0, Lc/AccelListener;->e:I

    goto :goto_0

    .line 151
    :cond_2
    sget v0, Lc/AccelListener;->ERROR_FAILED_TO_START:I

    invoke-direct {p0, v0}, Lc/AccelListener;->a(I)V

    .line 152
    sget v0, Lc/AccelListener;->ERROR_FAILED_TO_START:I

    const-string v1, "No sensors found to register accelerometer listening to."

    invoke-direct {p0, v0, v1}, Lc/AccelListener;->a(ILjava/lang/String;)V

    .line 153
    iget v0, p0, Lc/AccelListener;->e:I

    goto :goto_0
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 271
    iput p1, p0, Lc/AccelListener;->e:I

    .line 272
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 251
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 253
    :try_start_0
    const-string v0, "code"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    const-string v0, "message"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    new-instance v0, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-direct {v0, v2, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 260
    iget-object v1, p0, Lc/AccelListener;->j:Lvpadn/p;

    invoke-virtual {v1, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 261
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lc/AccelListener;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lc/AccelListener;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lc/AccelListener;->e:I

    sget v1, Lc/AccelListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lc/AccelListener;->h:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 174
    :cond_0
    sget v0, Lc/AccelListener;->STOPPED:I

    invoke-direct {p0, v0}, Lc/AccelListener;->a(I)V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lc/AccelListener;->g:I

    .line 176
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lc/AccelListener;->e:I

    sget v1, Lc/AccelListener;->STARTING:I

    if-ne v0, v1, :cond_0

    .line 185
    sget v0, Lc/AccelListener;->ERROR_FAILED_TO_START:I

    invoke-direct {p0, v0}, Lc/AccelListener;->a(I)V

    .line 186
    sget v0, Lc/AccelListener;->ERROR_FAILED_TO_START:I

    const-string v1, "Accelerometer could not be started."

    invoke-direct {p0, v0, v1}, Lc/AccelListener;->a(ILjava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 265
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {p0}, Lc/AccelListener;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 267
    iget-object v1, p0, Lc/AccelListener;->j:Lvpadn/p;

    invoke-virtual {v1, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 268
    return-void
.end method

.method private e()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 274
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 276
    :try_start_0
    const-string v0, "x"

    iget v2, p0, Lc/AccelListener;->a:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 277
    const-string v0, "y"

    iget v2, p0, Lc/AccelListener;->b:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 278
    const-string v0, "z"

    iget v2, p0, Lc/AccelListener;->c:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 279
    const-string v0, "timestamp"

    iget-wide v2, p0, Lc/AccelListener;->d:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 94
    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iput-object p3, p0, Lc/AccelListener;->j:Lvpadn/p;

    .line 96
    iget v1, p0, Lc/AccelListener;->e:I

    sget v2, Lc/AccelListener;->RUNNING:I

    if-eq v1, v2, :cond_0

    .line 99
    invoke-direct {p0}, Lc/AccelListener;->a()I

    .line 111
    :cond_0
    :goto_0
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->a:Lvpadn/w$a;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v0}, Lvpadn/w;->a(Z)V

    .line 113
    invoke-virtual {p3, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 114
    :goto_1
    return v0

    .line 102
    :cond_1
    const-string v1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget v1, p0, Lc/AccelListener;->e:I

    sget v2, Lc/AccelListener;->RUNNING:I

    if-ne v1, v2, :cond_0

    .line 104
    invoke-direct {p0}, Lc/AccelListener;->b()V

    goto :goto_0

    .line 108
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public initialize(Lvpadn/q;Lvpadn/f;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lvpadn/r;->initialize(Lvpadn/q;Lvpadn/f;)V

    .line 82
    invoke-interface {p1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lc/AccelListener;->h:Landroid/hardware/SensorManager;

    .line 83
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget v0, p0, Lc/AccelListener;->e:I

    sget v1, Lc/AccelListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 206
    iput p2, p0, Lc/AccelListener;->g:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lc/AccelListener;->b()V

    .line 123
    return-void
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Lc/AccelListener;->e:I

    sget v1, Lc/AccelListener;->RUNNING:I

    if-ne v0, v1, :cond_0

    .line 244
    invoke-direct {p0}, Lc/AccelListener;->b()V

    .line 246
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 216
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v0, p0, Lc/AccelListener;->e:I

    sget v1, Lc/AccelListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 224
    sget v0, Lc/AccelListener;->RUNNING:I

    invoke-direct {p0, v0}, Lc/AccelListener;->a(I)V

    .line 226
    iget v0, p0, Lc/AccelListener;->g:I

    if-lt v0, v3, :cond_0

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/AccelListener;->d:J

    .line 230
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lc/AccelListener;->a:F

    .line 231
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iput v0, p0, Lc/AccelListener;->b:F

    .line 232
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iput v0, p0, Lc/AccelListener;->c:F

    .line 234
    invoke-direct {p0}, Lc/AccelListener;->d()V

    goto :goto_0
.end method
