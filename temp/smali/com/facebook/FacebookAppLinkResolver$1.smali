.class Lcom/facebook/FacebookAppLinkResolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<",
        "Ljava/util/Map",
        "<",
        "Landroid/net/Uri;",
        "La/d;",
        ">;",
        "La/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookAppLinkResolver;

.field private final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookAppLinkResolver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/FacebookAppLinkResolver$1;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/k;)La/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/k",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "La/d;",
            ">;>;)",
            "La/d;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, La/k;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d;

    return-object v0
.end method

.method public bridge synthetic then(La/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, La/k;

    invoke-virtual {p0, p1}, Lcom/facebook/FacebookAppLinkResolver$1;->then(La/k;)La/d;

    move-result-object v0

    return-object v0
.end method
