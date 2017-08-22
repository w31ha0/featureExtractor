.class public Lvpadn/bj;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/bj$a;
    }
.end annotation


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    sput-object v0, Lvpadn/bj;->f:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lvpadn/bj;->g:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "openudid_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lvpadn/bj;->d:Landroid/content/SharedPreferences;

    .line 41
    iput-object p1, p0, Lvpadn/bj;->a:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lvpadn/bj;->e:Ljava/util/Random;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvpadn/bj;->c:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    sget-boolean v0, Lvpadn/bj;->g:Z

    if-nez v0, :cond_0

    const-string v0, "OpenUDID"

    const-string v1, "Initialisation isn\'t done"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-object v0, Lvpadn/bj;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lvpadn/bj;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lvpadn/bj;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 157
    new-instance v0, Lvpadn/bj;

    invoke-direct {v0, p0}, Lvpadn/bj;-><init>(Landroid/content/Context;)V

    .line 160
    iget-object v1, v0, Lvpadn/bj;->d:Landroid/content/SharedPreferences;

    const-string v2, "openudid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lvpadn/bj;->f:Ljava/lang/String;

    .line 161
    sget-object v1, Lvpadn/bj;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.OpenUDID.GETUDID"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lvpadn/bj;->b:Ljava/util/List;

    .line 167
    iget-object v1, v0, Lvpadn/bj;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 169
    invoke-direct {v0}, Lvpadn/bj;->e()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lvpadn/bj;->g:Z

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lvpadn/bj;->g:Z

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lvpadn/bj;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    const-string v1, "openudid"

    sget-object v2, Lvpadn/bj;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lvpadn/bj;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvpadn/bj;->f:Ljava/lang/String;

    .line 88
    sget-object v0, Lvpadn/bj;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lvpadn/bj;->f:Ljava/lang/String;

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lvpadn/bj;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 91
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x40

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvpadn/bj;->f:Ljava/lang/String;

    .line 93
    :cond_1
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iget-object v0, p0, Lvpadn/bj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lvpadn/bj;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 105
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lvpadn/bj;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 107
    iget-object v0, p0, Lvpadn/bj;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lvpadn/bj;->f()V

    .line 112
    sget-object v0, Lvpadn/bj;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0}, Lvpadn/bj;->d()V

    .line 116
    :cond_1
    invoke-direct {p0}, Lvpadn/bj;->c()V

    .line 117
    sput-boolean v5, Lvpadn/bj;->g:Z

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lvpadn/bj;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lvpadn/bj$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lvpadn/bj$a;-><init>(Lvpadn/bj;Lvpadn/bj$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 124
    iget-object v1, p0, Lvpadn/bj;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 126
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lvpadn/bj;->f:Ljava/lang/String;

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lvpadn/bj;->e:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 54
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p2, v2, v3, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 57
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lvpadn/bj;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lvpadn/bj;->c:Ljava/util/Map;

    iget-object v0, p0, Lvpadn/bj;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lvpadn/bj;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 69
    invoke-direct {p0}, Lvpadn/bj;->e()V

    .line 70
    return-void

    .line 62
    :cond_1
    :try_start_1
    iget-object v0, p0, Lvpadn/bj;->c:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method
