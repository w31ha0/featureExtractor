.class Lio/realm/BaseRealm$1;
.super Ljava/lang/Object;
.source "BaseRealm.java"

# interfaces
.implements Lio/realm/internal/SharedRealm$SchemaVersionListener;


# instance fields
.field final synthetic this$0:Lio/realm/BaseRealm;


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lio/realm/BaseRealm$1;->this$0:Lio/realm/BaseRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSchemaVersionChanged(J)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lio/realm/BaseRealm$1;->this$0:Lio/realm/BaseRealm;

    check-cast v0, Lio/realm/Realm;

    invoke-static {v0}, Lio/realm/RealmCache;->updateSchemaCache(Lio/realm/Realm;)V

    .line 86
    return-void
.end method
