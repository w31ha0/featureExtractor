.class Lcom/facebook/ads/internal/util/ab$2;
.super Lcom/facebook/ads/internal/view/d/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/util/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/util/ab;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/util/ab$2;->a:Lcom/facebook/ads/internal/util/ab;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/a/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/g/q;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/d/a/l;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/util/ab$2;->a(Lcom/facebook/ads/internal/view/d/a/l;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/d/a/l;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/util/ab$2;->a:Lcom/facebook/ads/internal/util/ab;

    iget-object v1, p0, Lcom/facebook/ads/internal/util/ab$2;->a:Lcom/facebook/ads/internal/util/ab;

    invoke-static {v1}, Lcom/facebook/ads/internal/util/ab;->b(Lcom/facebook/ads/internal/util/ab;)Lcom/facebook/ads/internal/view/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/m;->getDuration()I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/internal/util/ab;->a:I

    return-void
.end method
