.class public Lb/a/a/a/a/b/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private final d:Lb/a/a/a/a/b/ab;

.field private final e:Z

.field private final f:Z

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "[^\\p{Alnum}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/a/a/a/a/b/z;->a:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/a/a/b/z;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lb/a/a/a/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/b/z;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appContext must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    if-nez p2, :cond_1

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appIdentifier must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    if-nez p4, :cond_2

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "kits must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    iput-object p1, p0, Lb/a/a/a/a/b/z;->g:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lb/a/a/a/a/b/z;->h:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lb/a/a/a/a/b/z;->i:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lb/a/a/a/a/b/z;->j:Ljava/util/Collection;

    .line 127
    new-instance v0, Lb/a/a/a/a/b/ab;

    invoke-direct {v0}, Lb/a/a/a/a/b/ab;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/b/z;->d:Lb/a/a/a/a/b/ab;

    .line 129
    const-string v0, "com.crashlytics.CollectDeviceIdentifiers"

    invoke-static {p1, v0, v4}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lb/a/a/a/a/b/z;->e:Z

    .line 131
    iget-boolean v0, p0, Lb/a/a/a/a/b/z;->e:Z

    if-nez v0, :cond_3

    .line 132
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device ID collection disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_3
    const-string v0, "com.crashlytics.CollectUserIdentifiers"

    invoke-static {p1, v0, v4}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lb/a/a/a/a/b/z;->f:Z

    .line 138
    iget-boolean v0, p0, Lb/a/a/a/a/b/z;->f:Z

    if-nez v0, :cond_4

    .line 139
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User information collection disabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_4
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lb/a/a/a/a/b/z;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 333
    :try_start_0
    const-string v0, "crashlytics.installation.id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    if-nez v0, :cond_0

    .line 336
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/b/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "crashlytics.installation.id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_0
    iget-object v1, p0, Lb/a/a/a/a/b/z;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/a/b/z;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private a(Ljava/util/Map;Lb/a/a/a/a/b/aa;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lb/a/a/a/a/b/aa;",
            "Ljava/lang/String;",
            ">;",
            "Lb/a/a/a/a/b/aa;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 403
    if-eqz p3, :cond_0

    .line 404
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 191
    :try_start_0
    const-string v0, "APPLICATION_INSTALLATION_UUID"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Could not write application id to JSON"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lb/a/a/a/a/b/z;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lb/a/a/a/a/b/z;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 199
    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/a/b/aa;

    invoke-virtual {v1}, Lb/a/a/a/a/b/aa;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not write value to JSON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/b/aa;

    invoke-virtual {v0}, Lb/a/a/a/a/b/aa;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lb/a/a/a/a/b/z;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 212
    :try_start_0
    const-string v0, "os_version"

    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Could not write OS version to JSON"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 221
    :try_start_0
    const-string v0, "model"

    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Could not write model to JSON"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 154
    .line 159
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v0, "\\."

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/a/b/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(ILjava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 171
    invoke-direct {p0, v2}, Lb/a/a/a/a/b/z;->a(Lorg/json/JSONObject;)V

    .line 172
    invoke-direct {p0, v2}, Lb/a/a/a/a/b/z;->b(Lorg/json/JSONObject;)V

    .line 173
    invoke-direct {p0, v2}, Lb/a/a/a/a/b/z;->c(Lorg/json/JSONObject;)V

    .line 174
    invoke-direct {p0, v2}, Lb/a/a/a/a/b/z;->d(Lorg/json/JSONObject;)V

    .line 177
    const-string v0, ""

    .line 178
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 180
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lb/a/a/a/a/b/m;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Could not create cipher to encrypt headers."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    const-string v0, ""

    goto :goto_0

    .line 181
    :catch_1
    move-exception v1

    .line 182
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Could not encrypt IDs"

    invoke-interface {v2, v3, v4, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 159
    :array_0
    .array-data 2
        0x73s
        0x6cs
        0x63s
    .end array-data
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lb/a/a/a/a/b/z;->f:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lb/a/a/a/a/b/z;->i:Ljava/lang/String;

    .line 260
    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lb/a/a/a/a/b/z;->g:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    const-string v0, "crashlytics.installation.id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0, v1}, Lb/a/a/a/a/b/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lb/a/a/a/a/b/z;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 284
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v4}, Lb/a/a/a/a/b/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, v4}, Lb/a/a/a/a/b/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 292
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v4}, Lb/a/a/a/a/b/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v4}, Lb/a/a/a/a/b/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    const-string v0, ""

    .line 309
    iget-boolean v1, p0, Lb/a/a/a/a/b/z;->e:Z

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->j()Ljava/lang/String;

    move-result-object v0

    .line 312
    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lb/a/a/a/a/b/z;->g:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 314
    const-string v0, "crashlytics.installation.id"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    if-nez v0, :cond_0

    .line 317
    invoke-direct {p0, v1}, Lb/a/a/a/a/b/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_0
    return-object v0
.end method

.method public g()Ljava/util/Map;
    .locals 5
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
    .line 357
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 362
    iget-object v0, p0, Lb/a/a/a/a/b/z;->j:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/p;

    .line 363
    instance-of v1, v0, Lb/a/a/a/a/b/u;

    if-eqz v1, :cond_0

    .line 364
    check-cast v0, Lb/a/a/a/a/b/u;

    .line 365
    invoke-interface {v0}, Lb/a/a/a/a/b/u;->e()Ljava/util/Map;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/a/b/aa;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lb/a/a/a/a/b/z;->a(Ljava/util/Map;Lb/a/a/a/a/b/aa;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_1
    sget-object v0, Lb/a/a/a/a/b/aa;->d:Lb/a/a/a/a/b/aa;

    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lb/a/a/a/a/b/z;->a(Ljava/util/Map;Lb/a/a/a/a/b/aa;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lb/a/a/a/a/b/aa;->e:Lb/a/a/a/a/b/aa;

    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lb/a/a/a/a/b/z;->a(Ljava/util/Map;Lb/a/a/a/a/b/aa;Ljava/lang/String;)V

    .line 375
    sget-object v0, Lb/a/a/a/a/b/aa;->f:Lb/a/a/a/a/b/aa;

    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->n()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lb/a/a/a/a/b/z;->a(Ljava/util/Map;Lb/a/a/a/a/b/aa;Ljava/lang/String;)V

    .line 376
    sget-object v0, Lb/a/a/a/a/b/aa;->a:Lb/a/a/a/a/b/aa;

    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lb/a/a/a/a/b/z;->a(Ljava/util/Map;Lb/a/a/a/a/b/aa;Ljava/lang/String;)V

    .line 377
    sget-object v0, Lb/a/a/a/a/b/aa;->b:Lb/a/a/a/a/b/aa;

    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lb/a/a/a/a/b/z;->a(Ljava/util/Map;Lb/a/a/a/a/b/aa;Ljava/lang/String;)V

    .line 378
    sget-object v0, Lb/a/a/a/a/b/aa;->g:Lb/a/a/a/a/b/aa;

    invoke-virtual {p0}, Lb/a/a/a/a/b/z;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lb/a/a/a/a/b/z;->a(Ljava/util/Map;Lb/a/a/a/a/b/aa;Ljava/lang/String;)V

    .line 380
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lb/a/a/a/a/b/z;->d:Lb/a/a/a/a/b/ab;

    iget-object v1, p0, Lb/a/a/a/a/b/z;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lb/a/a/a/a/b/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 390
    iget-boolean v1, p0, Lb/a/a/a/a/b/z;->e:Z

    if-eqz v1, :cond_0

    .line 391
    new-instance v1, Lb/a/a/a/a/b/c;

    iget-object v2, p0, Lb/a/a/a/a/b/z;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lb/a/a/a/a/b/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lb/a/a/a/a/b/c;->a()Lb/a/a/a/a/b/b;

    move-result-object v1

    .line 393
    if-eqz v1, :cond_0

    .line 394
    iget-object v0, v1, Lb/a/a/a/a/b/b;->a:Ljava/lang/String;

    .line 398
    :cond_0
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 411
    iget-boolean v1, p0, Lb/a/a/a/a/b/z;->e:Z

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lb/a/a/a/a/b/z;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    invoke-direct {p0, v1}, Lb/a/a/a/a/b/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_0
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    iget-boolean v0, p0, Lb/a/a/a/a/b/z;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lb/a/a/a/a/b/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lb/a/a/a/a/b/z;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 441
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/b/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 450
    iget-boolean v0, p0, Lb/a/a/a/a/b/z;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v0}, Lb/a/a/a/a/b/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lb/a/a/a/a/b/z;->g:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 454
    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/b/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 475
    iget-boolean v0, p0, Lb/a/a/a/a/b/z;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH"

    invoke-direct {p0, v0}, Lb/a/a/a/a/b/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/a/a/a/b/z;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Utils#getBluetoothMacAddress failed, returning null. Requires prior call to BluetoothAdatpter.getDefaultAdapter() on thread that has called Looper.prepare()"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-boolean v0, p0, Lb/a/a/a/a/b/z;->e:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 492
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 493
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lb/a/a/a/a/b/z;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 499
    :goto_0
    return-object v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Could not retrieve android.os.Build.SERIAL value"

    invoke-interface {v2, v3, v4, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    .line 499
    goto :goto_0
.end method
