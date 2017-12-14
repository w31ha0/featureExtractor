.class Lcom/google/ssearch/SearchService$1;
.super Ljava/util/TimerTask;
.source "SearchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ssearch/SearchService;->provideService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ssearch/SearchService;


# direct methods
.method constructor <init>(Lcom/google/ssearch/SearchService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/ssearch/SearchService$1;->this$0:Lcom/google/ssearch/SearchService;

    .line 355
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/ssearch/SearchService$1;->this$0:Lcom/google/ssearch/SearchService;

    invoke-static {v0}, Lcom/google/ssearch/SearchService;->access$0(Lcom/google/ssearch/SearchService;)V

    .line 358
    return-void
.end method
