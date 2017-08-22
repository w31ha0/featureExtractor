.class public Lc/BatteryListener;
.super Lvpadn/r;
.source "BatteryListener.java"


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private b:Lvpadn/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 41
    iput-object v0, p0, Lc/BatteryListener;->b:Lvpadn/p;

    .line 47
    iput-object v0, p0, Lc/BatteryListener;->a:Landroid/content/BroadcastReceiver;

    .line 48
    return-void
.end method

.method private a(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    :try_start_0
    const-string v2, "level"

    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v2, "isPlugged"

    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v2, "BatteryManager"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lc/BatteryListener;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-object v0, p0, Lc/BatteryListener;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lc/BatteryListener;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lc/BatteryListener;->a:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string v1, "BatteryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering battery receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lc/BatteryListener;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lc/BatteryListener;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lc/BatteryListener;->b:Lvpadn/p;

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 160
    invoke-virtual {v0, p2}, Lvpadn/w;->a(Z)V

    .line 161
    iget-object v1, p0, Lc/BatteryListener;->b:Lvpadn/p;

    invoke-virtual {v1, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 163
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lc/BatteryListener;->a(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc/BatteryListener;->a(Lorg/json/JSONObject;Z)V

    .line 150
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    const-string v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    iget-object v1, p0, Lc/BatteryListener;->b:Lvpadn/p;

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "Battery listener already running."

    invoke-virtual {p3, v1}, Lvpadn/p;->b(Ljava/lang/String;)V

    .line 94
    :goto_0
    return v0

    .line 64
    :cond_0
    iput-object p3, p0, Lc/BatteryListener;->b:Lvpadn/p;

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lc/BatteryListener;->a:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 70
    new-instance v2, Lc/BatteryListener$1;

    invoke-direct {v2, p0}, Lc/BatteryListener$1;-><init>(Lc/BatteryListener;)V

    iput-object v2, p0, Lc/BatteryListener;->a:Landroid/content/BroadcastReceiver;

    .line 76
    iget-object v2, p0, Lc/BatteryListener;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lc/BatteryListener;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    :cond_1
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->a:Lvpadn/w$a;

    invoke-direct {v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 81
    invoke-virtual {v1, v0}, Lvpadn/w;->a(Z)V

    .line 82
    invoke-virtual {p3, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_0

    .line 86
    :cond_2
    const-string v2, "stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    invoke-direct {p0}, Lc/BatteryListener;->a()V

    .line 88
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v2, v1}, Lc/BatteryListener;->a(Lorg/json/JSONObject;Z)V

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lc/BatteryListener;->b:Lvpadn/p;

    .line 90
    invoke-virtual {p3}, Lvpadn/p;->c()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lc/BatteryListener;->a()V

    .line 102
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lc/BatteryListener;->a()V

    .line 109
    return-void
.end method
