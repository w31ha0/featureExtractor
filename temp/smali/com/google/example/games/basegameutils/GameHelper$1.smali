.class Lcom/google/example/games/basegameutils/GameHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/example/games/basegameutils/GameHelper;


# direct methods
.method constructor <init>(Lcom/google/example/games/basegameutils/GameHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper$1;->this$0:Lcom/google/example/games/basegameutils/GameHelper;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper$1;->this$0:Lcom/google/example/games/basegameutils/GameHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    .line 401
    return-void
.end method
