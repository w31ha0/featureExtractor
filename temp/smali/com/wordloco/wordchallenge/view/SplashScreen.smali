.class public Lcom/wordloco/wordchallenge/view/SplashScreen;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Landroid/content/Context;)V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/wordloco/wordchallenge/d/i;->a:Landroid/content/SharedPreferences;

    .line 34
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    sput-object v0, Lcom/wordloco/wordchallenge/d/j;->a:Landroid/content/SharedPreferences;

    .line 35
    new-array v0, v5, [Lb/a/a/a/p;

    new-instance v1, Lcom/a/a/h;

    invoke-direct {v1}, Lcom/a/a/h;-><init>()V

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lb/a/a/a/f;->a(Landroid/content/Context;[Lb/a/a/a/p;)Lb/a/a/a/f;

    .line 36
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/SplashScreen;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/WindowManager;

    .line 39
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 41
    invoke-static {v5}, Lcom/wordloco/wordchallenge/d/i;->d(Z)V

    .line 46
    :goto_1
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/f;->a(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    const-class v1, Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/wordloco/wordchallenge/view/SplashScreen;->finish()V

    .line 51
    invoke-virtual {p0, v0}, Lcom/wordloco/wordchallenge/view/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void

    .line 43
    :cond_0
    invoke-static {v4}, Lcom/wordloco/wordchallenge/d/i;->d(Z)V

    goto :goto_1

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method
