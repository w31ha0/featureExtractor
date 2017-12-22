.class Lcom/netflix/android/widgetry/buffet/BuffetManager$1;
.super Ljava/lang/Object;
.source "BuffetManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetManager;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetManager;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager$1;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 49
    :pswitch_0
    iget-object v1, p0, Lcom/netflix/android/widgetry/buffet/BuffetManager$1;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/buffet/BuffetManager;->handleTimeout(Lcom/netflix/android/widgetry/buffet/BuffetManager$SnackbarRecord;)V

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
