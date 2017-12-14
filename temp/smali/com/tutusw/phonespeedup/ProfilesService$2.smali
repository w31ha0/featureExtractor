.class Lcom/tutusw/phonespeedup/ProfilesService$2;
.super Ljava/util/TimerTask;
.source "ProfilesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/ProfilesService;->evaluateChecktemp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/ProfilesService;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/ProfilesService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfilesService$2;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    .line 385
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$2;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    invoke-static {v0}, Lcom/tutusw/phonespeedup/ProfilesService;->access$1(Lcom/tutusw/phonespeedup/ProfilesService;)I

    move-result v0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService$2;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget v1, v1, Lcom/tutusw/phonespeedup/ProfilesService;->failsafeTemp:I

    if-le v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$2;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "Speedup.intent.action.temp"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/ProfilesService;->sendBroadcast(Landroid/content/Intent;)V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService$2;->this$0:Lcom/tutusw/phonespeedup/ProfilesService;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/ProfilesService;->nm:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
