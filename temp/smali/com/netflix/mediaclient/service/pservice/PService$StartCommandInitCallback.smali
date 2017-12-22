.class final Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;
.super Ljava/lang/Object;
.source "PService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pservice/PService$InitCallback;


# instance fields
.field private final flags:I

.field private final intent:Landroid/content/Intent;

.field private final startId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/pservice/PService;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/pservice/PService;Landroid/content/Intent;II)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;->intent:Landroid/content/Intent;

    .line 290
    iput p3, p0, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;->flags:I

    .line 291
    iput p4, p0, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;->startId:I

    .line 292
    return-void
.end method


# virtual methods
.method public onInitComplete()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;->this$0:Lcom/netflix/mediaclient/service/pservice/PService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;->intent:Landroid/content/Intent;

    iget v2, p0, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;->flags:I

    iget v3, p0, Lcom/netflix/mediaclient/service/pservice/PService$StartCommandInitCallback;->startId:I

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/pservice/PService;->access$400(Lcom/netflix/mediaclient/service/pservice/PService;Landroid/content/Intent;II)V

    .line 297
    return-void
.end method
