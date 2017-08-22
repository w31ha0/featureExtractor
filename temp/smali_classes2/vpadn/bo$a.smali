.class Lvpadn/bo$a;
.super Ljava/util/TimerTask;
.source "VponLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/bo;


# direct methods
.method constructor <init>(Lvpadn/bo;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    const-string v0, "VponLocation"

    const-string v1, "[location] Enter LocationRegisterTask"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Lvpadn/bo$a$1;

    invoke-direct {v0, p0}, Lvpadn/bo$a$1;-><init>(Lvpadn/bo$a;)V

    .line 106
    :try_start_0
    iget-object v1, p0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v1}, Lvpadn/bo;->e(Lvpadn/bo;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v1}, Lvpadn/bo;->e(Lvpadn/bo;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    invoke-static {}, Lvpadn/bs;->i()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lvpadn/bs;->j()I

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_0
    iget-object v0, p0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->e(Lvpadn/bo;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lvpadn/br;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->e(Lvpadn/bo;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bs;->b()V

    .line 133
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v0, "VponLocation"

    const-string v1, "[location] scan environment wifi Fail because don\'t have WiFi_State_Permission"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const-string v1, "VponLocation"

    const-string v2, "[location] LocationRegisterTask throw Exception."

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 115
    :cond_2
    :try_start_1
    const-string v0, "VponLocation"

    const-string v1, "[wireless] close VponWiFI"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_3
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v2}, Lvpadn/bo;->f(Lvpadn/bo;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    const-string v0, "VponLocation"

    const-string v1, "[location] currently use the context as a parameter"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Lvpadn/bs;->i()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lvpadn/bs;->j()I

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    :cond_4
    iget-object v0, p0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->f(Lvpadn/bo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvpadn/br;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    iget-object v0, p0, Lvpadn/bo$a;->a:Lvpadn/bo;

    invoke-static {v0}, Lvpadn/bo;->f(Lvpadn/bo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bs;->b()V

    goto :goto_0

    .line 124
    :cond_5
    const-string v0, "VponLocation"

    const-string v1, "[location] scan environment wifi Fail because don\'t have WiFi_State_Permission"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_6
    const-string v0, "VponLocation"

    const-string v1, "[wireless] close VponWiFI"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
