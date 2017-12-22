.class public final Lcom/google/android/gcm/GCMRegistrar;
.super Ljava/lang/Object;
.source "GCMRegistrar.java"


# static fields
.field private static sAppPendingIntent:Landroid/app/PendingIntent;

.field private static sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

.field private static sRetryReceiverClassName:Ljava/lang/String;

.field private static sRetryReceiverContext:Landroid/content/Context;


# direct methods
.method static declared-synchronized cancelAppPendingIntent()V
    .locals 2

    .prologue
    .line 289
    const-class v1, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 291
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit v1

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static checkDevice(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 100
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device must be at least API Level 8 (instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 106
    :try_start_0
    const-string/jumbo v1, "com.google.android.gsf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Device does not have package com.google.android.gsf"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Ljava/lang/Boolean;J)V

    .line 391
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 497
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 499
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 500
    :catch_0
    move-exception v0

    .line 502
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Coult not get package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getBackoff(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 525
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 526
    const-string/jumbo v1, "backoff_ms"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static varargs getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No senderIds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 267
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 546
    const-string/jumbo v0, "com.google.android.gcm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/high16 v3, -0x80000000

    .line 358
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 359
    const-string/jumbo v0, "regId"

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string/jumbo v2, "appVersion"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 363
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    .line 364
    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 365
    const-string/jumbo v0, "App version changed from %d to %d;resetting registration id"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 365
    invoke-static {p0, v5, v0, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    .line 368
    const-string/jumbo v0, ""

    .line 370
    :cond_0
    return-object v0
.end method

.method static varargs internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 231
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const/4 v1, 0x2

    const-string/jumbo v2, "Registering app for senders %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    const-string/jumbo v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-static {p0, v1}, Lcom/google/android/gcm/GCMRegistrar;->setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 237
    const-string/jumbo v2, "sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 239
    return-void
.end method

.method static internalUnregister(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x2

    const-string/jumbo v1, "Unregistering app"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 259
    return-void
.end method

.method public static isRegistered(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 378
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 559
    const-string/jumbo v0, "GCMRegistrar"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 561
    const-string/jumbo v1, "GCMRegistrar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    return-void
.end method

.method public static varargs register(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 227
    invoke-static {p0, p1}, Lcom/google/android/gcm/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method static resetBackoff(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 514
    const/4 v0, 0x2

    const-string/jumbo v1, "Resetting backoff"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 515
    const/16 v0, 0xbb8

    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setBackoff(Landroid/content/Context;I)V

    .line 516
    return-void
.end method

.method static setBackoff(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 539
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 540
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    const-string/jumbo v1, "backoff_ms"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 543
    return-void
.end method

.method private static declared-synchronized setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 297
    const-class v1, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x2

    const-string/jumbo v2, "Creating pending intent to get package name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    const/4 v0, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    .line 303
    :cond_0
    const-string/jumbo v0, "app"

    sget-object v2, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit v1

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setRegisteredOnServer(Landroid/content/Context;Ljava/lang/Boolean;J)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 424
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    if-eqz p1, :cond_0

    .line 427
    const-string/jumbo v1, "onServer"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 428
    const-string/jumbo v1, "Setting registeredOnServer flag as %b until %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    new-instance v3, Ljava/sql/Timestamp;

    invoke-direct {v3, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v3, v2, v6

    invoke-static {p0, v4, v1, v2}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 436
    :goto_0
    const-string/jumbo v1, "onServerExpirationTime"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 437
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    return-void

    .line 432
    :cond_0
    const-string/jumbo v1, "Setting registeredOnServer expiration to %s"

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/sql/Timestamp;

    invoke-direct {v3, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v3, v2, v5

    invoke-static {p0, v4, v1, v2}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 401
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 402
    const-string/jumbo v1, "regId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    .line 404
    const/4 v3, 0x2

    const-string/jumbo v4, "Saving regId on app version %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v3, v4, v5}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 406
    const-string/jumbo v3, "regId"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    const-string/jumbo v3, "appVersion"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    return-object v1
.end method

.method static declared-synchronized setRetryBroadcastReceiver(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 311
    const-class v1, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 314
    const/4 v0, 0x6

    const-string/jumbo v2, "internal error: retry receiver class not set yet"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 316
    new-instance v0, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-direct {v0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

    .line 329
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x2

    const-string/jumbo v3, "Registering retry receiver"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v4}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    sput-object p0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverContext:Landroid/content/Context;

    .line 335
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_0
    monitor-exit v1

    return-void

    .line 320
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gcm/GCMBroadcastReceiver;

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const/4 v0, 0x6

    :try_start_2
    const-string/jumbo v2, "Could not create instance of %s. Using %s directly."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/android/gcm/GCMBroadcastReceiver;

    .line 325
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 323
    invoke-static {p0, v0, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 326
    new-instance v0, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-direct {v0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized setRetryReceiverClassName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 344
    const-class v1, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    const-string/jumbo v2, "Setting the name of retry receiver class to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 346
    sput-object p1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit v1

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
