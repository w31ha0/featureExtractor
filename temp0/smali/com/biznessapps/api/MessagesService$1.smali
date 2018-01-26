.class Lcom/biznessapps/api/MessagesService$1;
.super Ljava/util/TimerTask;
.source "MessagesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/MessagesService;->getUpdatePushNotifcationsTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/MessagesService;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/MessagesService;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/biznessapps/api/MessagesService$1;->this$0:Lcom/biznessapps/api/MessagesService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/api/MessagesService$1;->this$0:Lcom/biznessapps/api/MessagesService;

    invoke-static {v1}, Lcom/biznessapps/api/MessagesService;->access$000(Lcom/biznessapps/api/MessagesService;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
