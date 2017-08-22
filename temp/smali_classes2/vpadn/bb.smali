.class public final Lvpadn/bb;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/bb$c;,
        Lvpadn/bb$b;,
        Lvpadn/bb$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lvpadn/bb$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 40
    const-string v0, "AdvertisingIdClient"

    const-string v1, "Cannot be called from the main thread"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    new-instance v1, Lvpadn/bb$b;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lvpadn/bb$b;-><init>(Lvpadn/bb$1;)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :try_start_1
    new-instance v0, Lvpadn/bb$c;

    invoke-virtual {v1}, Lvpadn/bb$b;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lvpadn/bb$c;-><init>(Landroid/os/IBinder;)V

    .line 57
    new-instance v2, Lvpadn/bb$a;

    invoke-virtual {v0}, Lvpadn/bb$c;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lvpadn/bb$c;->a(Z)Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lvpadn/bb$a;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "AdvertisingIdClient"

    const-string v2, "getPackageManager throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    throw v0

    .line 59
    :catch_1
    move-exception v0

    .line 60
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 65
    :cond_1
    const-string v0, "AdvertisingIdClient"

    const-string v1, "Google Play connection failed"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
