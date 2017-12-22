.class Lcom/netflix/mediaclient/android/app/UserInputManager$4;
.super Ljava/lang/Object;
.source "UserInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/app/UserInputManager;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/app/UserInputManager;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/netflix/mediaclient/android/app/UserInputManager$4;->this$0:Lcom/netflix/mediaclient/android/app/UserInputManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/android/app/UserInputManager$4;->this$0:Lcom/netflix/mediaclient/android/app/UserInputManager;

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

    .line 226
    iget-object v2, p0, Lcom/netflix/mediaclient/android/app/UserInputManager$4;->this$0:Lcom/netflix/mediaclient/android/app/UserInputManager;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/app/UserInputManager$4;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/android/app/ApplicationStateListener;->onForeground(Lcom/netflix/mediaclient/android/app/UserInputManager;Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method
