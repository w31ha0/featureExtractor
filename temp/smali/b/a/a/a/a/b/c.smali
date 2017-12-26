.class Lb/a/a/a/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lb/a/a/a/a/f/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/b/c;->a:Landroid/content/Context;

    .line 20
    new-instance v0, Lb/a/a/a/a/f/c;

    const-string v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, Lb/a/a/a/a/f/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/a/a/a/b/c;->b:Lb/a/a/a/a/f/b;

    .line 21
    return-void
.end method

.method static synthetic a(Lb/a/a/a/a/b/c;)Lb/a/a/a/a/b/b;
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lb/a/a/a/a/b/c;->e()Lb/a/a/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lb/a/a/a/a/b/b;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lb/a/a/a/a/b/d;

    invoke-direct {v1, p0, p1}, Lb/a/a/a/a/b/d;-><init>(Lb/a/a/a/a/b/c;Lb/a/a/a/a/b/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method static synthetic a(Lb/a/a/a/a/b/c;Lb/a/a/a/a/b/b;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lb/a/a/a/a/b/c;->b(Lb/a/a/a/a/b/b;)V

    return-void
.end method

.method private b(Lb/a/a/a/a/b/b;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lb/a/a/a/a/b/c;->c(Lb/a/a/a/a/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lb/a/a/a/a/b/c;->b:Lb/a/a/a/a/f/b;

    iget-object v1, p0, Lb/a/a/a/a/b/c;->b:Lb/a/a/a/a/f/b;

    invoke-interface {v1}, Lb/a/a/a/a/f/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    iget-object v3, p1, Lb/a/a/a/a/b/b;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, Lb/a/a/a/a/b/b;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/a/f/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lb/a/a/a/a/b/c;->b:Lb/a/a/a/a/f/b;

    iget-object v1, p0, Lb/a/a/a/a/b/c;->b:Lb/a/a/a/a/f/b;

    invoke-interface {v1}, Lb/a/a/a/a/f/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/a/f/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0
.end method

.method private c(Lb/a/a/a/a/b/b;)Z
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p1, Lb/a/a/a/a/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Lb/a/a/a/a/b/b;
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lb/a/a/a/a/b/c;->c()Lb/a/a/a/a/b/j;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lb/a/a/a/a/b/j;->a()Lb/a/a/a/a/b/b;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lb/a/a/a/a/b/c;->c(Lb/a/a/a/a/b/b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lb/a/a/a/a/b/c;->d()Lb/a/a/a/a/b/j;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Lb/a/a/a/a/b/j;->a()Lb/a/a/a/a/b/b;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lb/a/a/a/a/b/c;->c(Lb/a/a/a/a/b/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "AdvertisingInfo not present"

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Using AdvertisingInfo from Service Provider"

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Using AdvertisingInfo from Reflection Provider"

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lb/a/a/a/a/b/b;
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Lb/a/a/a/a/b/c;->b()Lb/a/a/a/a/b/b;

    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Lb/a/a/a/a/b/c;->c(Lb/a/a/a/a/b/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Using AdvertisingInfo from Preference Store"

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v0}, Lb/a/a/a/a/b/c;->a(Lb/a/a/a/a/b/b;)V

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-direct {p0}, Lb/a/a/a/a/b/c;->e()Lb/a/a/a/a/b/b;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lb/a/a/a/a/b/c;->b(Lb/a/a/a/a/b/b;)V

    goto :goto_0
.end method

.method protected b()Lb/a/a/a/a/b/b;
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lb/a/a/a/a/b/c;->b:Lb/a/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/a/f/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "advertising_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lb/a/a/a/a/b/c;->b:Lb/a/a/a/a/f/b;

    invoke-interface {v1}, Lb/a/a/a/a/f/b;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 82
    new-instance v2, Lb/a/a/a/a/b/b;

    invoke-direct {v2, v0, v1}, Lb/a/a/a/a/b/b;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method public c()Lb/a/a/a/a/b/j;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lb/a/a/a/a/b/e;

    iget-object v1, p0, Lb/a/a/a/a/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/a/a/a/b/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d()Lb/a/a/a/a/b/j;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lb/a/a/a/a/b/f;

    iget-object v1, p0, Lb/a/a/a/a/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/a/a/a/b/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
