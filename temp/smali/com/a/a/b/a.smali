.class public Lcom/a/a/b/a;
.super Lb/a/a/a/p;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/b/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lb/a/a/a/a/b/u;"
    }
.end annotation


# instance fields
.field private final a:Lb/a/a/a/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/a/a/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/a/a/b/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lb/a/a/a/p;-><init>()V

    .line 37
    new-instance v0, Lb/a/a/a/a/a/b;

    invoke-direct {v0}, Lb/a/a/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/a;->a:Lb/a/a/a/a/a/b;

    .line 38
    new-instance v0, Lcom/a/a/b/g;

    invoke-direct {v0}, Lcom/a/a/b/g;-><init>()V

    iput-object v0, p0, Lcom/a/a/b/a;->g:Lcom/a/a/b/g;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/a/a/b/b;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 164
    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "crashlytics-build.properties"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 170
    if-eqz v2, :cond_2

    .line 171
    :try_start_1
    invoke-static {v2}, Lcom/a/a/b/b;->a(Ljava/io/InputStream;)Lcom/a/a/b/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 173
    :try_start_2
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v3, "Beta"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/a/a/b/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " build properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/a/a/b/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/a/a/b/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/a/a/b/b;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 180
    :goto_0
    if-eqz v2, :cond_0

    .line 182
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 189
    :cond_0
    :goto_1
    return-object v0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 177
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 178
    :goto_2
    :try_start_4
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v3

    const-string v4, "Beta"

    const-string v5, "Error reading Beta build properties"

    invoke-interface {v3, v4, v5, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    if-eqz v2, :cond_0

    .line 182
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 183
    :catch_2
    move-exception v1

    .line 184
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 180
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    .line 182
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 185
    :cond_1
    :goto_4
    throw v0

    .line 183
    :catch_3
    move-exception v1

    .line 184
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 180
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 177
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 136
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p2, v0}, Lcom/a/a/b/a;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v2, "Beta"

    const-string v3, "App was installed by Beta. Getting device token"

    invoke-interface {v0, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/a/a/b/a;->a:Lb/a/a/a/a/a/b;

    iget-object v2, p0, Lcom/a/a/b/a;->g:Lcom/a/a/b/g;

    invoke-virtual {v0, p1, v2}, Lb/a/a/a/a/a/b;->a(Landroid/content/Context;Lb/a/a/a/a/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    move-object v1, v0

    .line 150
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Failed to load the Beta device token"

    invoke-interface {v2, v3, v4, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v2, "Beta"

    const-string v3, "App was not installed by Beta. Skipping device token"

    invoke-interface {v0, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lb/a/a/a/a/b/z;Lb/a/a/a/a/g/f;Lcom/a/a/b/b;)V
    .locals 9

    .prologue
    .line 104
    new-instance v0, Lcom/a/a/b/c;

    new-instance v6, Lb/a/a/a/a/f/c;

    const-class v1, Lcom/a/a/b/a;

    invoke-static {v1}, Lb/a/a/a/f;->a(Ljava/lang/Class;)Lb/a/a/a/p;

    move-result-object v1

    invoke-direct {v6, v1}, Lb/a/a/a/a/f/c;-><init>(Lb/a/a/a/p;)V

    new-instance v7, Lb/a/a/a/a/b/aj;

    invoke-direct {v7}, Lb/a/a/a/a/b/aj;-><init>()V

    new-instance v8, Lb/a/a/a/a/e/b;

    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    invoke-direct {v8, v1}, Lb/a/a/a/a/e/b;-><init>(Lb/a/a/a/r;)V

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/a/a/b/c;-><init>(Landroid/content/Context;Lcom/a/a/b/a;Lb/a/a/a/a/b/z;Lb/a/a/a/a/g/f;Lcom/a/a/b/b;Lb/a/a/a/a/f/b;Lb/a/a/a/a/b/s;Lb/a/a/a/a/e/m;)V

    invoke-virtual {v0}, Lcom/a/a/b/c;->a()V

    .line 114
    return-void
.end method

.method private g()Lb/a/a/a/a/g/f;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/g/q;->b()Lb/a/a/a/a/g/w;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    iget-object v0, v0, Lb/a/a/a/a/g/w;->f:Lb/a/a/a/a/g/f;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lb/a/a/a/a/g/f;Lcom/a/a/b/b;)Z
    .locals 1

    .prologue
    .line 130
    if-eqz p1, :cond_0

    iget-object v0, p1, Lb/a/a/a/a/g/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 118
    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    .line 122
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "io.crash.air"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "Beta kit initializing..."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/a/a/b/a;->C()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/a/a/b/a;->B()Lb/a/a/a/a/b/z;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lb/a/a/a/a/b/z;->h()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-direct {p0, v0, v2}, Lcom/a/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Beta"

    const-string v2, "A Beta device token was not found for this app"

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Beta device token is present, checking for app updates."

    invoke-interface {v2, v3, v4}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/a/a/b/a;->g()Lb/a/a/a/a/g/f;

    move-result-object v2

    .line 64
    invoke-direct {p0, v0}, Lcom/a/a/b/a;->a(Landroid/content/Context;)Lcom/a/a/b/b;

    move-result-object v3

    .line 66
    invoke-virtual {p0, v2, v3}, Lcom/a/a/b/a;->a(Lb/a/a/a/a/g/f;Lcom/a/a/b/b;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/a/b/a;->a(Landroid/content/Context;Lb/a/a/a/a/b/z;Lb/a/a/a/a/g/f;Lcom/a/a/b/b;)V

    .line 70
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "1.1.2.37"

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lb/a/a/a/a/b/aa;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/a/a/b/a;->B()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->h()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/a/a/b/a;->C()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/a/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    sget-object v2, Lb/a/a/a/a/b/aa;->c:Lb/a/a/a/a/b/aa;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    return-object v1
.end method

.method f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/a/a/b/a;->C()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lb/a/a/a/a/b/m;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/a/a/b/a;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
