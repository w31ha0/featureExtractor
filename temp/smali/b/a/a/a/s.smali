.class Lb/a/a/a/s;
.super Lb/a/a/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lb/a/a/a/a/e/m;

.field private h:Landroid/content/pm/PackageManager;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/pm/PackageInfo;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lb/a/a/a/p;-><init>()V

    .line 41
    iput-object p1, p0, Lb/a/a/a/s;->a:Ljava/util/Collection;

    .line 42
    new-instance v0, Lb/a/a/a/a/e/b;

    invoke-direct {v0}, Lb/a/a/a/a/e/b;-><init>()V

    iput-object v0, p0, Lb/a/a/a/s;->g:Lb/a/a/a/a/e/m;

    .line 43
    return-void
.end method

.method private a(Lb/a/a/a/a/g/n;Ljava/util/Collection;)Lb/a/a/a/a/g/d;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/a/g/n;",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;)",
            "Lb/a/a/a/a/g/d;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lb/a/a/a/s;->C()Landroid/content/Context;

    move-result-object v0

    .line 164
    new-instance v1, Lb/a/a/a/a/b/k;

    invoke-direct {v1}, Lb/a/a/a/a/b/k;-><init>()V

    invoke-virtual {v1, v0}, Lb/a/a/a/a/b/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0}, Lb/a/a/a/a/b/m;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lb/a/a/a/a/b/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    iget-object v0, p0, Lb/a/a/a/s;->m:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a/a/a/b/t;->a(Ljava/lang/String;)Lb/a/a/a/a/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/t;->a()I

    move-result v7

    .line 169
    invoke-virtual {p0}, Lb/a/a/a/s;->B()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->c()Ljava/lang/String;

    move-result-object v2

    .line 171
    new-instance v0, Lb/a/a/a/a/g/d;

    iget-object v3, p0, Lb/a/a/a/s;->l:Ljava/lang/String;

    iget-object v4, p0, Lb/a/a/a/s;->k:Ljava/lang/String;

    iget-object v6, p0, Lb/a/a/a/s;->n:Ljava/lang/String;

    iget-object v8, p0, Lb/a/a/a/s;->o:Ljava/lang/String;

    const-string v9, "0"

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lb/a/a/a/a/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lb/a/a/a/a/g/n;Ljava/util/Collection;)V

    return-object v0
.end method

.method private a(Lb/a/a/a/a/g/e;Lb/a/a/a/a/g/n;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/a/g/e;",
            "Lb/a/a/a/a/g/n;",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p2, p3}, Lb/a/a/a/s;->a(Lb/a/a/a/a/g/n;Ljava/util/Collection;)Lb/a/a/a/a/g/d;

    move-result-object v0

    .line 158
    new-instance v1, Lb/a/a/a/a/g/ab;

    invoke-virtual {p0}, Lb/a/a/a/s;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lb/a/a/a/a/g/e;->c:Ljava/lang/String;

    iget-object v4, p0, Lb/a/a/a/s;->g:Lb/a/a/a/a/e/m;

    invoke-direct {v1, p0, v2, v3, v4}, Lb/a/a/a/a/g/ab;-><init>(Lb/a/a/a/p;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/e/m;)V

    invoke-virtual {v1, v0}, Lb/a/a/a/a/g/ab;->a(Lb/a/a/a/a/g/d;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Lb/a/a/a/a/g/e;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb/a/a/a/a/g/e;",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 109
    const-string v1, "new"

    iget-object v2, p2, Lb/a/a/a/a/g/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lb/a/a/a/s;->b(Ljava/lang/String;Lb/a/a/a/a/g/e;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/g/q;->d()Z

    move-result v0

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to create app with Crashlytics service."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :cond_2
    const-string v1, "configured"

    iget-object v2, p2, Lb/a/a/a/a/g/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/g/q;->d()Z

    move-result v0

    goto :goto_0

    .line 124
    :cond_3
    iget-boolean v1, p2, Lb/a/a/a/a/g/e;->e:Z

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Server says an update is required - forcing a full App update."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lb/a/a/a/s;->c(Ljava/lang/String;Lb/a/a/a/a/g/e;Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lb/a/a/a/a/g/e;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb/a/a/a/a/g/e;",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lb/a/a/a/s;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/a/a/a/g/n;->a(Landroid/content/Context;Ljava/lang/String;)Lb/a/a/a/a/g/n;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lb/a/a/a/s;->a(Lb/a/a/a/a/g/n;Ljava/util/Collection;)Lb/a/a/a/a/g/d;

    move-result-object v0

    .line 140
    new-instance v1, Lb/a/a/a/a/g/h;

    invoke-virtual {p0}, Lb/a/a/a/s;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lb/a/a/a/a/g/e;->c:Ljava/lang/String;

    iget-object v4, p0, Lb/a/a/a/s;->g:Lb/a/a/a/a/e/m;

    invoke-direct {v1, p0, v2, v3, v4}, Lb/a/a/a/a/g/h;-><init>(Lb/a/a/a/p;Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/e/m;)V

    invoke-virtual {v1, v0}, Lb/a/a/a/a/g/h;->a(Lb/a/a/a/a/g/d;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;Lb/a/a/a/a/g/e;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lb/a/a/a/a/g/e;",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lb/a/a/a/s;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/a/a/a/g/n;->a(Landroid/content/Context;Ljava/lang/String;)Lb/a/a/a/a/g/n;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lb/a/a/a/s;->a(Lb/a/a/a/a/g/e;Lb/a/a/a/a/g/n;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/a/s;->B()Lb/a/a/a/a/b/z;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/a/b/z;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/s;->m:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lb/a/a/a/s;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/s;->h:Landroid/content/pm/PackageManager;

    .line 55
    invoke-virtual {p0}, Lb/a/a/a/s;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/s;->i:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lb/a/a/a/s;->h:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lb/a/a/a/s;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/s;->j:Landroid/content/pm/PackageInfo;

    .line 57
    iget-object v1, p0, Lb/a/a/a/s;->j:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/s;->k:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lb/a/a/a/s;->j:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    :goto_0
    iput-object v1, p0, Lb/a/a/a/s;->l:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lb/a/a/a/s;->h:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lb/a/a/a/s;->C()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/s;->n:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lb/a/a/a/s;->C()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/s;->o:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    .line 70
    :goto_1
    return v0

    .line 58
    :cond_0
    iget-object v1, p0, Lb/a/a/a/s;->j:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed init"

    invoke-interface {v2, v3, v4, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected b()Ljava/lang/Boolean;
    .locals 10

    .prologue
    .line 75
    invoke-virtual {p0}, Lb/a/a/a/s;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/a/b/m;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 76
    const/4 v7, 0x0

    .line 77
    const/4 v8, 0x0

    .line 80
    :try_start_0
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    iget-object v2, p0, Lb/a/a/a/s;->f:Lb/a/a/a/a/b/z;

    iget-object v3, p0, Lb/a/a/a/s;->g:Lb/a/a/a/a/e/m;

    iget-object v4, p0, Lb/a/a/a/s;->k:Ljava/lang/String;

    iget-object v5, p0, Lb/a/a/a/s;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lb/a/a/a/s;->e()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lb/a/a/a/a/g/q;->a(Lb/a/a/a/p;Lb/a/a/a/a/b/z;Lb/a/a/a/a/e/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/g/q;->c()Z

    .line 85
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/g/q;->b()Lb/a/a/a/a/g/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    .line 92
    :try_start_1
    iget-object v0, v0, Lb/a/a/a/a/g/w;->a:Lb/a/a/a/a/g/e;

    iget-object v1, p0, Lb/a/a/a/s;->a:Ljava/util/Collection;

    invoke-direct {p0, v9, v0, v1}, Lb/a/a/a/s;->a(Ljava/lang/String;Lb/a/a/a/a/g/e;Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 97
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error performing auto configuration."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v0, v7

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "1.2.0.37"

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lb/a/a/a/s;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lb/a/a/a/a/b/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lb/a/a/a/s;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
