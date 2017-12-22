.class Lio/realm/Realm$1$2;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lio/realm/Realm$1;

.field final synthetic val$backgroundException:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/realm/Realm$1;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1474
    iput-object p1, p0, Lio/realm/Realm$1$2;->this$1:Lio/realm/Realm$1;

    iput-object p2, p0, Lio/realm/Realm$1$2;->val$backgroundException:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1477
    iget-object v0, p0, Lio/realm/Realm$1$2;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onError:Lio/realm/Realm$Transaction$OnError;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lio/realm/Realm$1$2;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onError:Lio/realm/Realm$Transaction$OnError;

    iget-object v1, p0, Lio/realm/Realm$1$2;->val$backgroundException:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/realm/Realm$Transaction$OnError;->onError(Ljava/lang/Throwable;)V

    .line 1482
    return-void

    .line 1480
    :cond_0
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string/jumbo v1, "Async transaction failed"

    iget-object v2, p0, Lio/realm/Realm$1$2;->val$backgroundException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
