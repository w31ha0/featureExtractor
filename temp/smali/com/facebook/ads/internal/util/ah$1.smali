.class Lcom/facebook/ads/internal/util/ah$1;
.super Lcom/facebook/ads/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/util/ah;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/g/f;Lcom/facebook/ads/internal/util/ah$a;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/facebook/ads/internal/g/f;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/facebook/ads/internal/util/ah;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/ah;DDDZLcom/facebook/ads/internal/g/f;Ljava/lang/String;)V
    .locals 12

    iput-object p1, p0, Lcom/facebook/ads/internal/util/ah$1;->g:Lcom/facebook/ads/internal/util/ah;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/ads/internal/util/ah$1;->e:Lcom/facebook/ads/internal/g/f;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/ads/internal/util/ah$1;->f:Ljava/lang/String;

    move-object v3, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/internal/b/b;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method protected a(ZZLcom/facebook/ads/internal/b/c;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/util/ah$1;->e:Lcom/facebook/ads/internal/g/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/util/ah$1;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/util/ah$1;->g:Lcom/facebook/ads/internal/util/ah;

    sget-object v3, Lcom/facebook/ads/internal/util/ah$b;->d:Lcom/facebook/ads/internal/util/ah$b;

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/util/ah;->a(Lcom/facebook/ads/internal/util/ah;Lcom/facebook/ads/internal/util/ah$b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/g/f;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
