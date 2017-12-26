.class Lb/a/a/a/a/g/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/g/v;


# instance fields
.field private final a:Lb/a/a/a/a/g/z;

.field private final b:Lb/a/a/a/a/g/y;

.field private final c:Lb/a/a/a/a/b/s;

.field private final d:Lb/a/a/a/a/g/g;

.field private final e:Lb/a/a/a/a/g/aa;

.field private final f:Lb/a/a/a/p;

.field private final g:Lb/a/a/a/a/f/b;


# direct methods
.method public constructor <init>(Lb/a/a/a/p;Lb/a/a/a/a/g/z;Lb/a/a/a/a/b/s;Lb/a/a/a/a/g/y;Lb/a/a/a/a/g/g;Lb/a/a/a/a/g/aa;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lb/a/a/a/a/g/j;->f:Lb/a/a/a/p;

    .line 38
    iput-object p2, p0, Lb/a/a/a/a/g/j;->a:Lb/a/a/a/a/g/z;

    .line 39
    iput-object p3, p0, Lb/a/a/a/a/g/j;->c:Lb/a/a/a/a/b/s;

    .line 40
    iput-object p4, p0, Lb/a/a/a/a/g/j;->b:Lb/a/a/a/a/g/y;

    .line 41
    iput-object p5, p0, Lb/a/a/a/a/g/j;->d:Lb/a/a/a/a/g/g;

    .line 42
    iput-object p6, p0, Lb/a/a/a/a/g/j;->e:Lb/a/a/a/a/g/aa;

    .line 43
    new-instance v0, Lb/a/a/a/a/f/c;

    iget-object v1, p0, Lb/a/a/a/a/g/j;->f:Lb/a/a/a/p;

    invoke-direct {v0, v1}, Lb/a/a/a/a/f/c;-><init>(Lb/a/a/a/p;)V

    iput-object v0, p0, Lb/a/a/a/a/g/j;->g:Lb/a/a/a/a/f/b;

    .line 44
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lb/a/a/a/a/g/j;->f:Lb/a/a/a/p;

    invoke-virtual {v0}, Lb/a/a/a/p;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/a/b/m;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lb/a/a/a/a/g/j;->b:Lb/a/a/a/a/g/y;

    invoke-interface {v0, p1}, Lb/a/a/a/a/g/y;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 130
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private b(Lb/a/a/a/a/g/u;)Lb/a/a/a/a/g/w;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 88
    .line 91
    :try_start_0
    sget-object v1, Lb/a/a/a/a/g/u;->b:Lb/a/a/a/a/g/u;

    invoke-virtual {v1, p1}, Lb/a/a/a/a/g/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lb/a/a/a/a/g/j;->d:Lb/a/a/a/a/g/g;

    invoke-interface {v1}, Lb/a/a/a/a/g/g;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_4

    .line 95
    iget-object v1, p0, Lb/a/a/a/a/g/j;->b:Lb/a/a/a/a/g/y;

    iget-object v3, p0, Lb/a/a/a/a/g/j;->c:Lb/a/a/a/a/b/s;

    invoke-interface {v1, v3, v2}, Lb/a/a/a/a/g/y;->a(Lb/a/a/a/a/b/s;Lorg/json/JSONObject;)Lb/a/a/a/a/g/w;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_3

    .line 99
    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v2, v3}, Lb/a/a/a/a/g/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lb/a/a/a/a/g/j;->c:Lb/a/a/a/a/b/s;

    invoke-interface {v2}, Lb/a/a/a/a/b/s;->a()J

    move-result-wide v2

    .line 103
    sget-object v4, Lb/a/a/a/a/g/u;->c:Lb/a/a/a/a/g/u;

    invoke-virtual {v4, p1}, Lb/a/a/a/a/g/u;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3}, Lb/a/a/a/a/g/w;->a(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 106
    :cond_0
    :try_start_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Returning cached settings."

    invoke-interface {v0, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 122
    :cond_1
    :goto_0
    return-object v0

    .line 108
    :cond_2
    :try_start_2
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Cached settings have expired."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    :goto_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to get cached settings"

    invoke-interface {v2, v3, v4, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 111
    :cond_3
    :try_start_3
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to transform cached settings data."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "No cached settings data found."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method


# virtual methods
.method public a()Lb/a/a/a/a/g/w;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lb/a/a/a/a/g/u;->a:Lb/a/a/a/a/g/u;

    invoke-virtual {p0, v0}, Lb/a/a/a/a/g/j;->a(Lb/a/a/a/a/g/u;)Lb/a/a/a/a/g/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/a/a/a/a/g/u;)Lb/a/a/a/a/g/w;
    .locals 6

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-static {}, Lb/a/a/a/f;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/a/g/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lb/a/a/a/a/g/j;->b(Lb/a/a/a/a/g/u;)Lb/a/a/a/a/g/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :cond_0
    if-nez v1, :cond_1

    .line 63
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/a/g/j;->e:Lb/a/a/a/a/g/aa;

    iget-object v2, p0, Lb/a/a/a/a/g/j;->a:Lb/a/a/a/a/g/z;

    invoke-interface {v0, v2}, Lb/a/a/a/a/g/aa;->a(Lb/a/a/a/a/g/z;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    iget-object v2, p0, Lb/a/a/a/a/g/j;->b:Lb/a/a/a/a/g/y;

    iget-object v3, p0, Lb/a/a/a/a/g/j;->c:Lb/a/a/a/a/b/s;

    invoke-interface {v2, v3, v0}, Lb/a/a/a/a/g/y;->a(Lb/a/a/a/a/b/s;Lorg/json/JSONObject;)Lb/a/a/a/a/g/w;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lb/a/a/a/a/g/j;->d:Lb/a/a/a/a/g/g;

    iget-wide v3, v1, Lb/a/a/a/a/g/w;->g:J

    invoke-interface {v2, v3, v4, v0}, Lb/a/a/a/a/g/g;->a(JLorg/json/JSONObject;)V

    .line 69
    const-string v2, "Loaded settings: "

    invoke-direct {p0, v0, v2}, Lb/a/a/a/a/g/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lb/a/a/a/a/g/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/a/g/j;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v1

    .line 77
    if-nez v0, :cond_2

    .line 78
    :try_start_2
    sget-object v1, Lb/a/a/a/a/g/u;->c:Lb/a/a/a/a/g/u;

    invoke-direct {p0, v1}, Lb/a/a/a/a/g/j;->b(Lb/a/a/a/a/g/u;)Lb/a/a/a/a/g/w;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 84
    :cond_2
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 82
    :goto_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v2, v3, v4, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method a(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lb/a/a/a/a/g/j;->g:Lb/a/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/a/f/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    const-string v1, "existing_instance_identifier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    iget-object v1, p0, Lb/a/a/a/a/g/j;->g:Lb/a/a/a/a/f/b;

    invoke-interface {v1, v0}, Lb/a/a/a/a/f/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lb/a/a/a/a/g/j;->f:Lb/a/a/a/p;

    invoke-virtual {v2}, Lb/a/a/a/p;->C()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/a/a/b/m;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lb/a/a/a/a/b/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lb/a/a/a/a/g/j;->g:Lb/a/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/a/f/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lb/a/a/a/a/g/j;->c()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lb/a/a/a/a/g/j;->b()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
