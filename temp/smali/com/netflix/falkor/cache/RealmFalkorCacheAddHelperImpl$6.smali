.class Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$6;
.super Ljava/lang/Object;
.source "RealmFalkorCacheAddHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;

.field final synthetic val$jsonValue:Lcom/google/gson/JsonElement;

.field final synthetic val$path:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$6;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;

    iput-object p2, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$6;->val$path:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$6;->val$jsonValue:Lcom/google/gson/JsonElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$6;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;

    iget-object v1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$6;->val$path:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$6;->val$jsonValue:Lcom/google/gson/JsonElement;

    invoke-static {v0, v1, v2}, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->access$001(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V

    .line 97
    return-void
.end method
