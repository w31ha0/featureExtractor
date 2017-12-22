.class Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$5;
.super Ljava/lang/Object;
.source "RealmFalkorCacheAddHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$5;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$5;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;

    iget-object v0, v0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mRealm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->cancelTransaction(Lio/realm/Realm;)V

    .line 86
    return-void
.end method
