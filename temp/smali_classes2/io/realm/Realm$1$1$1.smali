.class Lio/realm/Realm$1$1$1;
.super Ljava/lang/Object;
.source "Realm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lio/realm/Realm$1$1;


# direct methods
.method constructor <init>(Lio/realm/Realm$1$1;)V
    .locals 0

    .prologue
    .line 1462
    iput-object p1, p0, Lio/realm/Realm$1$1$1;->this$2:Lio/realm/Realm$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lio/realm/Realm$1$1$1;->this$2:Lio/realm/Realm$1$1;

    iget-object v0, v0, Lio/realm/Realm$1$1;->this$1:Lio/realm/Realm$1;

    iget-object v0, v0, Lio/realm/Realm$1;->val$onSuccess:Lio/realm/Realm$Transaction$OnSuccess;

    invoke-interface {v0}, Lio/realm/Realm$Transaction$OnSuccess;->onSuccess()V

    .line 1466
    return-void
.end method
