.class Lio/realm/Realm$1$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lio/realm/Realm$1;

.field final synthetic val$versionID:[Lio/realm/internal/SharedRealm$VersionID;


# direct methods
.method constructor <init>(Lio/realm/Realm$1;[Lio/realm/internal/SharedRealm$VersionID;)V
    .locals 0

    .prologue
    .line 1451
    iput-object p1, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iput-object p2, p0, Lio/realm/Realm$1$1;->val$versionID:[Lio/realm/internal/SharedRealm$VersionID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1454
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->this$0:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    invoke-interface {v0}, Lio/realm/Realm$Transaction$OnSuccess;->onSuccess()V

    .line 1471
    :goto_0
    return-void

    .line 1461
    :cond_0
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->this$0:Lio/realm/Realm;

    iget-object v0, v0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->getVersionID()Lio/realm/internal/SharedRealm$VersionID;

    move-result-object v0

    iget-object v1, p0, Lio/realm/Realm$1$1;->val$versionID:[Lio/realm/internal/SharedRealm$VersionID;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lio/realm/internal/SharedRealm$VersionID;->compareTo(Lio/realm/internal/SharedRealm$VersionID;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1462
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->this$0:Lio/realm/Realm;

    iget-object v0, v0, Lio/realm/Realm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lio/realm/Realm$1$1$1;

    invoke-direct {v1, p0}, Lio/realm/Realm$1$1$1;-><init>(Lio/realm/Realm$1$1;)V

    invoke-virtual {v0, v1}, Lio/realm/internal/RealmNotifier;->addTransactionCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1469
    :cond_1
    iget-object v0, p0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    invoke-interface {v0}, Lio/realm/Realm$Transaction$OnSuccess;->onSuccess()V

    goto :goto_0
.end method
