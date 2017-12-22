.class Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$1;
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
    .line 37
    iput-object p1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$1;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$1;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;

    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->getInstance()Lio/realm/Realm;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mRealm:Lio/realm/Realm;

    .line 41
    return-void
.end method
