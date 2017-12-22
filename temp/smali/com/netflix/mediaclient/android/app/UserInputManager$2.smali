.class Lcom/netflix/mediaclient/android/app/UserInputManager$2;
.super Ljava/lang/Object;
.source "UserInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/app/UserInputManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/UserInputManager$2;->this$0:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager$2;->this$0:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/app/UserInputManager;->access$000(Lcom/netflix/mediaclient/android/app/UserInputManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/app/ApplicationStateListener;

    .line 145
    iget-object v2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager$2;->this$0:Lcom/netflix/mediaclient/android/app/UserInputManager;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/android/app/ApplicationStateListener;->onUiStarted(Lcom/netflix/mediaclient/android/app/UserInputManager;)V

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method
