.class Lio/realm/Realm$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lio/realm/Realm;

.field final synthetic val$canDeliverNotification:Z

.field final synthetic val$onError:Lio/realm/Realm$Transaction$OnError;

.field final synthetic val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

.field final synthetic val$realmConfiguration:Lio/realm/RealmConfiguration;

.field final synthetic val$realmNotifier:Lio/realm/internal/RealmNotifier;

.field final synthetic val$transaction:Lio/realm/Realm$Transaction;


# direct methods
.method constructor <init>(Lio/realm/Realm;Lio/realm/RealmConfiguration;Lio/realm/Realm$Transaction;ZLio/realm/Realm$Transaction$OnSuccess;Lio/realm/internal/RealmNotifier;Lio/realm/Realm$Transaction$OnError;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lio/realm/Realm$1;->this$0:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/Realm$1;->val$realmConfiguration:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/Realm$1;->val$transaction:Lio/realm/Realm$Transaction;

    iput-boolean p4, p0, Lio/realm/Realm$1;->val$canDeliverNotification:Z

    iput-object p5, p0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    iput-object p6, p0, Lio/realm/Realm$1;->val$realmNotifier:Lio/realm/internal/RealmNotifier;

    iput-object p7, p0, Lio/realm/Realm$1;->val$onError:Lio/realm/Realm$Transaction$OnError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    new-array v1, v2, [Lio/realm/internal/SharedRealm$VersionID;

    .line 1425
    new-array v2, v2, [Ljava/lang/Throwable;

    .line 1427
    iget-object v0, p0, Lio/realm/Realm$1;->val$realmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v3

    .line 1428
    invoke-virtual {v3}, Lio/realm/Realm;->beginTransaction()V

    .line 1430
    :try_start_0
    iget-object v0, p0, Lio/realm/Realm$1;->val$transaction:Lio/realm/Realm$Transaction;

    invoke-interface {v0, v3}, Lio/realm/Realm$Transaction;->execute(Lio/realm/Realm;)V

    .line 1432
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1444
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    goto :goto_0

    .line 1436
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lio/realm/Realm;->commitTransaction()V

    .line 1439
    const/4 v0, 0x0

    iget-object v4, v3, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v4}, Lio/realm/internal/SharedRealm;->getVersionID()Lio/realm/internal/SharedRealm$VersionID;

    move-result-object v4

    aput-object v4, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    .line 1447
    :goto_1
    aget-object v0, v2, v5

    .line 1449
    iget-boolean v2, p0, Lio/realm/Realm$1;->val$canDeliverNotification:Z

    if-eqz v2, :cond_4

    .line 1450
    aget-object v2, v1, v5

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    if-eqz v2, :cond_3

    .line 1451
    iget-object v0, p0, Lio/realm/Realm$1;->val$realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/Realm$1$1;

    invoke-direct {v2, p0, v1}, Lio/realm/Realm$1$1;-><init>(Lio/realm/Realm$1;[Lio/realm/internal/SharedRealm$VersionID;)V

    invoke-virtual {v0, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    const/4 v4, 0x0

    :try_start_2
    aput-object v0, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1444
    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lio/realm/Realm;->close()V

    throw v0

    .line 1473
    :cond_3
    if-eqz v0, :cond_0

    .line 1474
    iget-object v1, p0, Lio/realm/Realm$1;->val$realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/Realm$1$2;

    invoke-direct {v2, p0, v0}, Lio/realm/Realm$1$2;-><init>(Lio/realm/Realm$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lio/realm/internal/RealmNotifier;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1486
    :cond_4
    if-eqz v0, :cond_0

    .line 1490
    new-instance v1, Lio/realm/exceptions/RealmException;

    const-string/jumbo v2, "Async transaction failed"

    invoke-direct {v1, v2, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
